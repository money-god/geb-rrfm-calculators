/// PRawValidator.sol

// Copyright (C) 2020 Reflexer Labs, INC

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.6.7;

import "../../math/SafeMath.sol";
import "../../math/SignedSafeMath.sol";

abstract contract OracleLike {
    function getResultWithValidity() virtual external returns (uint256, bool);
    function lastUpdateTime() virtual external view returns (uint64);
}
abstract contract OracleRelayerLike {
    function redemptionPrice() virtual external returns (uint256);
    function modifyParameters(bytes32,uint256) virtual external;
}
abstract contract StabilityFeeTreasuryLike {
    function getAllowance(address) virtual external view returns (uint, uint);
    function systemCoin() virtual external view returns (address);
    function pullFunds(address, address, uint) virtual external;
}

contract PRawValidator is SafeMath, SignedSafeMath {
    // --- Authorities ---
    mapping (address => uint) public authorities;
    function addAuthority_BXs(address account) external update isAuthority { authorities[account] = 1; }
    function removeAuthority_Qd5(address account) external update isAuthority { authorities[account] = 0; }
    modifier isAuthority {
        require(authorities[msg.sender] == 1, "PRawValidator/not-an-authority");
        _;
    }

    // --- Readers ---
    mapping (address => uint) public readers;
    function addReader_ayP(address account) external update isAuthority { readers[account] = 1; }
    function removeReader_xT_(address account) external update isAuthority { readers[account] = 0; }
    modifier isReader {
        require(readers[msg.sender] == 1, "PRawValidator/not-a-reader");
        _;
    }

    modifier update() {
        // getNextRedemptionRate_xlS(1, 1);
        _;
    }

    // --- Structs ---
    struct DeviationObservation {
        uint timestamp;
        int  proportional;
    }

    // -- Static & Default Variables ---
    // Kp
    uint256 internal Kp;                             // [EIGHTEEN_DECIMAL_NUMBER]
    // Percentage of the current redemptionPrice that must be passed by priceDeviationCumulative in order to set a redemptionRate != 0%
    uint256 internal noiseBarrier;                   // [EIGHTEEN_DECIMAL_NUMBER]
    // Default redemptionRate (0% yearly)
    uint256 internal defaultRedemptionRate;          // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // Max possible annual redemption rate
    uint256 internal feedbackOutputUpperBound;       // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // Min possible annual redemption rate
    int256  internal feedbackOutputLowerBound;       // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // Seconds that must pass between validateSeed calls
    uint256 internal periodSize;                     // [seconds]

    // --- Fluctuating/Dynamic Variables ---
    // Deviation history
    DeviationObservation[] internal deviationObservations;
    // Lower allowed deviation of the per second rate when checking that, after it is raised to SPY seconds, it is close to the contract computed annual rate
    uint256 internal lowerPrecomputedRateAllowedDeviation; // [EIGHTEEN_DECIMAL_NUMBER]
    // Upper allowed deviation of the per second rate when checking that, after it is raised to SPY seconds, it is close to the contract computed annual rate
    uint256 internal upperPrecomputedRateAllowedDeviation; // [EIGHTEEN_DECIMAL_NUMBER]
    // Rate applied to lowerPrecomputedRateAllowedDeviation as time passes by and no new seed is validated
    uint256 internal allowedDeviationIncrease;             // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // Minimum rate timeline
    uint256 internal minRateTimeline;                      // [seconds]
    // Last time when the rate was computed
    uint256 internal lastUpdateTime;                       // [timestamp]

    // Address that can validate seeds
    address public seedProposer;

    uint256 internal constant SPY                         = 31536000;
    uint256 internal constant NEGATIVE_RATE_LIMIT         = TWENTY_SEVEN_DECIMAL_NUMBER - 1;
    uint256 internal constant TWENTY_SEVEN_DECIMAL_NUMBER = 10 ** 27;
    uint256 internal constant EIGHTEEN_DECIMAL_NUMBER     = 10 ** 18;

    constructor(
        uint256 Kp_,
        uint256 periodSize_,
        uint256 lowerPrecomputedRateAllowedDeviation_,
        uint256 upperPrecomputedRateAllowedDeviation_,
        uint256 allowedDeviationIncrease_,
        uint256 noiseBarrier_,
        uint256 feedbackOutputUpperBound_,
        uint256 minRateTimeline_,
        int256  feedbackOutputLowerBound_,
        int256[] memory importedState
    ) public {
        defaultRedemptionRate                = TWENTY_SEVEN_DECIMAL_NUMBER;
        require(lowerPrecomputedRateAllowedDeviation_ < EIGHTEEN_DECIMAL_NUMBER, "PRawValidator/invalid-lprad");
        require(upperPrecomputedRateAllowedDeviation_ <= lowerPrecomputedRateAllowedDeviation_, "PRawValidator/invalid-uprad");
        require(allowedDeviationIncrease_ <= TWENTY_SEVEN_DECIMAL_NUMBER, "PRawValidator/invalid-adi");
        require(Kp_ > 0, "PRawValidator/null-sg");
        require(
          feedbackOutputUpperBound_ <= multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER) &&
          feedbackOutputLowerBound_ >= -int(multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER)) && feedbackOutputLowerBound_ < 0,
          "PRawValidator/invalid-foub-or-folb"
        );
        require(periodSize_ > 0, "PRawValidator/invalid-ps");
        require(uint(importedState[0]) <= now, "PRawValidator/invalid-imported-time");
        require(noiseBarrier_ <= EIGHTEEN_DECIMAL_NUMBER, "PRawValidator/invalid-nb");
        authorities[msg.sender]              = 1;
        readers[msg.sender]                  = 1;
        feedbackOutputUpperBound             = feedbackOutputUpperBound_;
        feedbackOutputLowerBound             = feedbackOutputLowerBound_;
        periodSize                           = periodSize_;
        Kp                                   = Kp_;
        lowerPrecomputedRateAllowedDeviation = lowerPrecomputedRateAllowedDeviation_;
        upperPrecomputedRateAllowedDeviation = upperPrecomputedRateAllowedDeviation_;
        allowedDeviationIncrease             = allowedDeviationIncrease_;
        minRateTimeline                      = minRateTimeline_;
        noiseBarrier                         = noiseBarrier_;
        lastUpdateTime                       = uint(importedState[0]);
        if (importedState[1] > 0 && importedState[2] > 0) {
          deviationObservations.push(
            DeviationObservation(uint(importedState[1]), importedState[2])
          );
        }
    }

    // --- Administration ---
    function setSeedProposer(address addr) external update isAuthority {
        readers[seedProposer] = 0;
        seedProposer = addr;
        readers[seedProposer] = 1;
    }
    function modifyParameters(bytes32 parameter, address addr) external update isAuthority {
        if (parameter == "seedProposer") {
          readers[seedProposer] = 0;
          seedProposer = addr;
          readers[seedProposer] = 1;
        }
        else revert("PRawValidator/modify-unrecognized-param");
    }
    function modifyParameters(bytes32 parameter, uint256 val) external update isAuthority {
        if (parameter == "nb") {
          require(val <= EIGHTEEN_DECIMAL_NUMBER, "PRawValidator/invalid-nb");
          noiseBarrier = val;
        }
        else if (parameter == "ps") {
          require(val > 0, "PRawValidator/null-ps");
          periodSize = val;
        }
        else if (parameter == "sg") {
          require(val > 0, "PRawValidator/null-sg");
          Kp = val;
        }
        else if (parameter == "mrt") {
          require(val <= SPY, "PRawValidator/invalid-mrt");
          minRateTimeline = val;
        }
        else if (parameter == "foub") {
          require(val <= multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER), "PRawValidator/big-foub");
          feedbackOutputUpperBound = val;
        }
        else if (parameter == "lprad") {
          require(val <= EIGHTEEN_DECIMAL_NUMBER && val >= upperPrecomputedRateAllowedDeviation, "PRawValidator/invalid-lprad");
          lowerPrecomputedRateAllowedDeviation = val;
        }
        else if (parameter == "uprad") {
          require(val <= EIGHTEEN_DECIMAL_NUMBER && val <= lowerPrecomputedRateAllowedDeviation, "PRawValidator/invalid-uprad");
          upperPrecomputedRateAllowedDeviation = val;
        }
        else if (parameter == "adi") {
          require(val <= TWENTY_SEVEN_DECIMAL_NUMBER, "PRawValidator/invalid-adi");
          allowedDeviationIncrease = val;
        }
        else revert("PRawValidator/modify-unrecognized-param");
    }
    function modifyParameters(bytes32 parameter, int256 val) external update isAuthority {
        if (parameter == "folb") {
          require(
            val >= -int(multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER)) && val < 0,
            "PRawValidator/invalid-folb"
          );
          feedbackOutputLowerBound = val;
        }
        else revert("PRawValidator/modify-unrecognized-param");
    }

    // --- P Specific Math ---
    function riemannSum(int x, int y) internal pure returns (int z) {
        return addition(x, y) / 2;
    }
    function absolute(int x) internal pure returns (uint z) {
        z = (x < 0) ? uint(-x) : uint(x);
    }

    // --- PI Utils ---
    /**
    * @notice Get the observation list length
    **/
    function oll_reI() public isReader view update returns (uint256) {
        return deviationObservations.length;
    }
    function getBoundedRedemptionRate_FZ1(int pOutput) public isReader update view returns (uint256, uint256) {
        int  boundedPOutput = pOutput;
        uint newRedemptionRate;
        uint rateTimeline = SPY;

        if (pOutput < feedbackOutputLowerBound) {
          boundedPOutput = feedbackOutputLowerBound;
        } else if (pOutput > int(feedbackOutputUpperBound)) {
          boundedPOutput = int(feedbackOutputUpperBound);
        }

        bool negativeOutputExceedsHundred = (boundedPOutput < 0 && -boundedPOutput >= int(defaultRedemptionRate));
        if (negativeOutputExceedsHundred) {
          rateTimeline = divide(multiply(rateTimeline, TWENTY_SEVEN_DECIMAL_NUMBER), uint(-int(boundedPOutput)));
          if (rateTimeline == 0) {
            rateTimeline = (minRateTimeline == 0) ? 1 : minRateTimeline;
          }
          newRedemptionRate   = uint(addition(int(defaultRedemptionRate), -int(NEGATIVE_RATE_LIMIT)));
        } else {
          if (boundedPOutput < 0 && boundedPOutput <= -int(NEGATIVE_RATE_LIMIT)) {
            newRedemptionRate = uint(addition(int(defaultRedemptionRate), -int(NEGATIVE_RATE_LIMIT)));
          } else {
            newRedemptionRate = uint(addition(int(defaultRedemptionRate), boundedPOutput));
          }
        }

        return (newRedemptionRate, rateTimeline);
    }
    function breaksNoiseBarrier_p7i(uint piSum, uint redemptionPrice) public isReader update view returns (bool) {
        uint deltaNoise = subtract(multiply(uint(2), EIGHTEEN_DECIMAL_NUMBER), noiseBarrier);
        return piSum >= subtract(divide(multiply(redemptionPrice, deltaNoise), EIGHTEEN_DECIMAL_NUMBER), redemptionPrice);
    }
    function correctPreComputedRate_kXS(uint precomputedRate, uint contractComputedRate, uint precomputedAllowedDeviation) public isReader update view returns (bool) {
        if (precomputedRate == contractComputedRate) return true;
        bool withinBounds = (
          precomputedRate >= divide(multiply(contractComputedRate, precomputedAllowedDeviation), EIGHTEEN_DECIMAL_NUMBER) &&
          precomputedRate <= divide(multiply(contractComputedRate, subtract(multiply(uint(2), EIGHTEEN_DECIMAL_NUMBER), precomputedAllowedDeviation)), EIGHTEEN_DECIMAL_NUMBER)
        );
        bool sameSign = true;
        if (
          contractComputedRate < TWENTY_SEVEN_DECIMAL_NUMBER && precomputedRate >= TWENTY_SEVEN_DECIMAL_NUMBER ||
          contractComputedRate > TWENTY_SEVEN_DECIMAL_NUMBER && precomputedRate <= TWENTY_SEVEN_DECIMAL_NUMBER
        ) {
          sameSign = false;
        }
        return (withinBounds && sameSign);
    }
    function getGainAdjustedPOutput_n9z(int proportionalTerm) public isReader update view returns (int256) {
        bool pTermExceedsMaxUint = (absolute(proportionalTerm) >= uint(-1) / Kp);
        int adjustedProportional = (pTermExceedsMaxUint) ? proportionalTerm : multiply(proportionalTerm, int(Kp)) / int(EIGHTEEN_DECIMAL_NUMBER);
        return adjustedProportional;
    }

    // --- Rate Calculation ---
    function validateSeed(
      uint inputAccumulatedPreComputedRate,
      uint marketPrice,
      uint redemptionPrice,
      uint ,
      uint precomputedAllowedDeviation
    ) external returns (uint8) {
        // Only the proposer can call
        require(seedProposer == msg.sender, "PRawValidator/invalid-msg-sender");
        // Can't update same observation twice
        require(subtract(now, lastUpdateTime) >= periodSize || lastUpdateTime == 0, "PRawValidator/wait-more");
        // Calculate proportional term
        int256 proportionalTerm = subtract(int(redemptionPrice), multiply(int(marketPrice), int(10**9)));
        // Update deviation history
        deviationObservations.push(DeviationObservation(now, proportionalTerm));
        // Update timestamp
        lastUpdateTime = now;
        // Calculate the adjusted P output
        int pOutput = getGainAdjustedPOutput_n9z(proportionalTerm);
        // Check if P is greater than noise
        if (
          breaksNoiseBarrier_p7i(absolute(pOutput), redemptionPrice) &&
          pOutput != 0
        ) {
          // Make sure the annual rate doesn't exceed the bounds
          (uint newRedemptionRate, ) = getBoundedRedemptionRate_FZ1(pOutput);
          // Sanitize the precomputed allowed deviation
          uint256 sanitizedAllowedDeviation =
            (precomputedAllowedDeviation < upperPrecomputedRateAllowedDeviation) ?
            upperPrecomputedRateAllowedDeviation : precomputedAllowedDeviation;
          // Check that the caller provided a correct precomputed rate
          require(
            correctPreComputedRate_kXS(inputAccumulatedPreComputedRate, newRedemptionRate, sanitizedAllowedDeviation),
            "PRawValidator/invalid-seed"
          );
          return 1;
        } else {
          return 0;
        }
    }
    function getNextRedemptionRate_xlS(uint marketPrice, uint redemptionPrice)
      public isReader view returns (uint256, int256, uint256) {
        // Calculate proportional term
        int256 proportionalTerm = subtract(int(redemptionPrice), multiply(int(marketPrice), int(10**9)));
        // Calculate the P output
        int pOutput = getGainAdjustedPOutput_n9z(proportionalTerm);
        // Check if P is greater than noise
        if (
          breaksNoiseBarrier_p7i(absolute(pOutput), redemptionPrice) &&
          pOutput != 0
        ) {
          // Get the new rate as well as the timeline
          (uint newRedemptionRate, uint rateTimeline) = getBoundedRedemptionRate_FZ1(pOutput);
          // Return the bounded result
          return (newRedemptionRate, proportionalTerm, rateTimeline);
        } else {
          // If it's not, simply return the default annual rate and the computed terms
          return (TWENTY_SEVEN_DECIMAL_NUMBER, proportionalTerm, SPY);
        }
    }

    // --- Parameter Getters ---
    function rt(uint marketPrice, uint redemptionPrice, uint IGNORED) external isReader view returns (uint256) {
        (, , uint rateTimeline) = getNextRedemptionRate_xlS(marketPrice, redemptionPrice);
        return rateTimeline;
    }
    function sg_ME1() external isReader update view returns (uint256) {
        return Kp;
    }
    function nb_9Y5() external isReader update view returns (uint256) {
        return noiseBarrier;
    }
    function drr_f0j() external isReader update view returns (uint256) {
        return defaultRedemptionRate;
    }
    function foub_TvR() external isReader update view returns (uint256) {
        return feedbackOutputUpperBound;
    }
    function folb_tas() external isReader update view returns (int256) {
        return feedbackOutputLowerBound;
    }
    function pscl() external isReader update view returns (int256) {
        return int(TWENTY_SEVEN_DECIMAL_NUMBER);
    }
    function ps() external isReader update view returns (uint256) {
        return periodSize;
    }
    function dos_bN5(uint256 i) external isReader update view returns (uint256, int256) {
        return (deviationObservations[i].timestamp, deviationObservations[i].proportional);
    }
    function lprad() external isReader update view returns (uint256) {
        return lowerPrecomputedRateAllowedDeviation;
    }
    function uprad_45M() external isReader update view returns (uint256) {
        return upperPrecomputedRateAllowedDeviation;
    }
    function adi() external isReader update view returns (uint256) {
        return allowedDeviationIncrease;
    }
    function mrt_vW0() external isReader update view returns (uint256) {
        return minRateTimeline;
    }
    function lut_E4m() external isReader update view returns (uint256) {
        return lastUpdateTime;
    }
    function tlv() external isReader update view returns (uint256) {
        uint elapsed = (lastUpdateTime == 0) ? 0 : subtract(now, lastUpdateTime);
        return elapsed;
    }
}
