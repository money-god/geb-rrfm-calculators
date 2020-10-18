/// PRawGlobalValidator.sol

/**
REFLEXER LABS TECHNOLOGIES TERMS AND CONDITIONS

ATTENTION: These Terms and Conditions (these “Terms”) are a legally binding agreement pertaining to all software and technologies (whether in source code, bytecode, machine code or other form) invented, developed, published or deployed by or on behalf of Reflexer Labs, Inc., a Delaware corporation (“Reflexer”) (such software and technologies, the “Reflexer Technologies”).

    1. NOTICE AND RESERVATION OF PROPRIETARY RIGHTS. Except: (a) to the extent provided in these Terms (including Section 2 below), (b) to the extent expressly provided to the contrary in the header of a specific source code file officially published by Reflexer (and then only as to such source code file); and (c) as limited by law, rule or regulation applicable to and binding upon Reflexer:
            i. all intellectual property (including all trade secrets, source code, designs and protocols) relating to the Reflexer Technologies has been published or made available for informational purposes only (e.g., to enable Reflexer Software Users to conduct their own due diligence into the security and other risks thereof);
            ii. no license, right of reproduction or distribution or other right with respect to any Reflexer Technologies is granted or implied; and
            iii. all moral, intellectual property and other rights relating to the Reflexer Technologies are hereby reserved by Reflexer (and the other contributors to such intellectual property or holders of such rights, as applicable).
    2. LIMITED LICENSE. Subject to and conditional upon acceptance and compliance with these Terms, Reflexer hereby grants a non-transferable, personal, non-sub-licensable, global, royalty-free, revocable license to:
        a. Authorized Users, to initiate and receive the benefits of Ethereum transactions involving the Deployed Reflexer Smart Contracts, solely for the purposes authorized by Section 3 (and not for any of the purposes described in Section 4 or Section 5) (such transactions, “User Transactions”); and
        b. the operator of each Ethereum Node, to execute the Deployed Reflexer Smart Contracts pursuant to the propagation and validation of User Transactions on Ethereum and the production, mining, validation and formation of consensus with respect to Ethereum blocks and the Ethereum blockchain involving such User Transactions, in each case, solely in the ordinary course of business consistent with past practice and in accordance with ordinary the protocol rules of Ethereum.
“Deployed Reflexer Smart Contracts” means this source code deployed by Reflexer on Ethereum.
“Ethereum” means the Ethereum mainnet and the consensus blockchain for such mainnet (networkID:1, chainID:1) as recognized by the official Go Ethereum Client, or, if applicable, a fork thereof determined by Reflexer (in its sole and absolute discretion) to be “Ethereum” for purposes of these Terms.
“Ethereum Node” means an un-altered instance of the official Go Ethereum Client or another generally accepted client running the same protocol as the official Go Ethereum Client, in each case, running on Ethereum, or, if applicable a fork of such a client determined by Reflexer (in its sole and absolute discretion) to be an “Ethereum Node” for purposes of these Terms.
    3. ACCEPTABLE USES. The license in Section 2 applies only to personal, non-commercial and legally permitted uses by Acceptable Users or operators of Ethereum Nodes of the Deployed Reflexer Smart Contracts (the “Authorized Uses”). “Users” means each person using or seeking to use the Deployed Reflexer Smart Contracts for an acceptance use. “Acceptable Users” means Users who accurately make the representations set forth in Section 6 on all dates of use of the Deployed Reflexer Smart Contracts.
    4. PROHIBITED USES. In furtherance and not in limitation of the use limitations established by Section 3, it is a condition of the licenses granted hereunder that the Deployed Reflexer Smart Contracts and other Reflexer Technologies must not be used to:
        a. employ any device, scheme or artifice to defraud, or otherwise materially mislead, any person;
        b. engage in any act, practice or course of conduct or business that operates or would operate as a fraud or deceit upon any person;
        c. violate, breach or fail to comply with any condition or provision of these Terms or any other terms of service, privacy policy, trading policy or other contract governing the use of the Reflexer Technologies;
        d. use the Reflexer Smart Contracts by or on behalf of a competitor of Reflexer or a competing smart contract system, platform or service for the purpose of interfering with, damaging or impairing any Reflexer Technologies to obtain a competitive advantage;
        e. engage or attempt to engage in or assist any hack of or attack on Reflexer, the Deployed Reflexer Smart Contracts or other Reflexer Technologies or any user of the Reflexer Smart Contracts or other Reflexer Technologies, including any “sybil attack”, “DoS attack,” “eclipse attack,” “consensus attack,” “reentrancy attack” or “griefing attack” or theft, conversion or misappropriation of tokens or other similar action;
        f. commit or facilitate any violation of applicable laws, rules or regulations, including money laundering, evasion of sanctions, tax evasion, etc.;
        g. abuse, harass, stalk, threaten or otherwise violate the legal rights (such as rights of privacy and publicity) of other persons;
        h. engage in or knowingly facilitate any “front-running,” “wash trading,” “pump and dump trading,” “ramping,” “cornering” or fraudulent, deceptive or manipulative trading activities
        i. participate in, facilitate, assist or knowingly transact with any pool, syndicate or joint account organized for the purpose of unfairly or deceptively influencing the market price of any token;
        j. transact in securities, commodities futures, trading of commodities on a leveraged, margined or financed basis, binary options (including prediction-market transactions), real estate or real estate leases, equipment leases, debt financings, equity financings or other similar transactions; or
        k. engage in token-based or other financings of a business, enterprise, venture, DAO, software development project or other initiative, including ICOs, DAICOs, IEOs, “yield farming” or other token-based fundraising events.
    5. ADDITIONAL LIMITATIONS.  Each Use must not:
        a. publish or make any Reflexer Technologies available to any other person;
        b. sell, resell, license, sublicense, rent, lease or distribute any Reflexer Technologies, or include any Reflexer Technologies or any derivative works thereof in any other software, product or service;
        c. copy, modify or make derivative works based upon the Reflexer Technologies;
        d. “frame” or “mirror” any Reflexer Technologies, including by deploying any Deployed Reflexer Smart Contracts to any alternative Ethereum addresses or other blockchain addresses; or
        e. decompile, disassemble or reverse-engineer the Reflexer Technologies or otherwise attempt to obtain or perceive the source code relating to any Reflexer Technologies.
    6. REPRESENTATIONS OF USERS. Each User hereby represents and warrants to Reflexer that the following statements and information are accurate and complete at all relevant times. In the event that any such statement or information becomes untrue as to a User, User shall immediately cease using all Reflexer Technologies:
        a. Status.  If User is an individual, User is of legal age in the jurisdiction in which User resides (and in any event is older than thirteen years of age) and is of sound mind. If User is a business entity, User is duly organized, validly existing and in good standing under the laws of the jurisdiction in which it is organized, and has all requisite power and authority for a business entity of its type to carry on its business as now conducted.
        b. Power and Authority. User has all requisite capacity, power and authority to accept these Terms and to carry out and perform its obligations under these Terms. These Terms constitutes a legal, valid and binding obligation of User, enforceable against User.
        c. No Conflict; Compliance with Law. User agreeing to these Terms and using the Reflexer Technologies does not constitute, and would not reasonably be expected to result in (with or without notice, lapse of time, or both), a breach, default, contravention or violation of any law applicable to User, or contract or agreement to which User is a party or by which User is bound.
        d. Absence of Sanctions. User is not, (and, if User is an entity, User is not owned or controlled by any other person who is), and is not acting on behalf of any other person who is, identified on any list of prohibited parties under any law or by any nation or government, state or other political subdivision thereof, any entity exercising legislative, judicial or administrative functions of or pertaining to government such as the lists maintained by the United Nations Security Council, the U.S. government (including the U.S. Treasury Department’s Specially Designated Nationals list and Foreign Sanctions Evaders list), the European Union (EU) or its member states, and the government of a User home country.  User is not, (and, if User is an entity, User is not owned or controlled by any other person who is), and is not acting on behalf of any other person who is, located, ordinarily resident, organized, established, or domiciled in Cuba, Iran, North Korea, Sudan, Syria, the Crimea region (including Sevastopol) or any other country or jurisdiction against which the U.S. maintains economic sanctions or an arms embargo. The tokens or other funds a User use to participate in the Reflexer Technologies are not derived from, and do not otherwise represent the proceeds of, any activities done in violation or contravention of any law.
        e. No Claim, Loan, Ownership Interest or Investment Purpose. User understands and agrees that the User’s use of the Reflexer Technologies does not: (i) represent or constitute a loan or a contribution of capital to, or other investment in Reflexer or any business or venture; (ii) provide User with any ownership interest, equity, security, or right to or interest in the assets, rights, properties, revenues or profits of, or voting rights whatsoever in, Reflexer or any other business or venture; or (iii) create or imply or entitle User to the benefits of any fiduciary or other agency relationship between Reflexer or any of its directors, officers, employees, agents or affiliates, on the on hand, and User, on the other hand. User is not entering into these Terms or using the Reflexer Technologies for the purpose of making an investment with respect to Reflexer or its securities, but solely wishes to use the Reflexer Technologies for their intended purposes. User understands and agrees that Reflexer will not accept or take custody over any tokens or money or other assets of User and has no responsibility or control over the foregoing.
        f. Non-Reliance. User is knowledgeable, experienced and sophisticated in using and evaluating blockchain and related technologies and assets, including Ethereum and “smart contracts” (bytecode deployed to Ethereum or another blockchain). User has conducted its own thorough independent investigation and analysis of the Reflexer Technologies and the other matters contemplated by these Terms, and has not relied upon any information, statement, omission, representation or warranty, express or implied, written or oral, made by or on behalf of Reflexer in connection therewith.
    7. Risks, Disclaimers and Limitations of Liability. ALL REFLEXER TECHNOLOGIES ARE PROVIDED "AS IS" AND “AS-AVAILABLE,” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ARE HEREBY DISCLAIMED. IN NO EVENT SHALL REFLEXER OR ANY OTHER CONTRIBUTOR TO THE REFLEXER TECHNOLOGIES BE LIABLE FOR ANY DAMAGES, INCLUDING ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE OR INTELLECTUAL PROPERTY (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION), HOWEVER CAUSED OR CLAIMED (WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)), EVEN IF SUCH DAMAGES WERE REASONABLY FORESEEABLE  OR THE COPYRIGHT HOLDERS AND CONTRIBUTORS WERE ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**/

pragma solidity ^0.6.7;

import "../../../math/SafeMath.sol";
import "../../../math/SignedSafeMath.sol";

contract PRawGlobalValidator is SafeMath, SignedSafeMath {
    // --- Authorities ---
    mapping (address => uint) public authorities;
    function addAuthority(address account) external isAuthority { authorities[account] = 1; }
    function removeAuthority(address account) external isAuthority { authorities[account] = 0; }
    modifier isAuthority {
        require(authorities[msg.sender] == 1, "PRawGlobalValidator/not-an-authority");
        _;
    }

    // --- Readers ---
    mapping (address => uint) public readers;
    function addReader(address account) external isAuthority { readers[account] = 1; }
    function removeReader(address account) external isAuthority { readers[account] = 0; }
    modifier isReader {
        require(readers[msg.sender] == 1, "PRawGlobalValidator/not-a-reader");
        _;
    }

    // --- Structs ---
    struct DeviationObservation {
        uint timestamp;
        int  proportional;
    }

    // -- Static & Default Variables ---
    int256 internal Kp;                              // [EIGHTEEN_DECIMAL_NUMBER]
    uint256 internal noiseBarrier;                   // [EIGHTEEN_DECIMAL_NUMBER]
    uint256 internal defaultRedemptionRate;          // [TWENTY_SEVEN_DECIMAL_NUMBER]
    uint256 internal feedbackOutputUpperBound;       // [TWENTY_SEVEN_DECIMAL_NUMBER]
    int256  internal feedbackOutputLowerBound;       // [TWENTY_SEVEN_DECIMAL_NUMBER]
    uint256 internal periodSize;                     // [seconds]

    // --- Fluctuating/Dynamic Variables ---
    DeviationObservation[] internal deviationObservations;
    uint256 internal lowerPrecomputedRateAllowedDeviation; // [EIGHTEEN_DECIMAL_NUMBER]
    uint256 internal upperPrecomputedRateAllowedDeviation; // [EIGHTEEN_DECIMAL_NUMBER]
    uint256 internal allowedDeviationIncrease;             // [TWENTY_SEVEN_DECIMAL_NUMBER]
    uint256 internal minRateTimeline;                      // [seconds]
    uint256 internal lastUpdateTime;                       // [timestamp]
    uint256 internal defaultGlobalTimeline = 31536000;

    address public seedProposer;

    uint256 internal constant NEGATIVE_RATE_LIMIT         = TWENTY_SEVEN_DECIMAL_NUMBER - 1;
    uint256 internal constant TWENTY_SEVEN_DECIMAL_NUMBER = 10 ** 27;
    uint256 internal constant EIGHTEEN_DECIMAL_NUMBER     = 10 ** 18;

    constructor(
        int256 Kp_,
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
        require(lowerPrecomputedRateAllowedDeviation_ < EIGHTEEN_DECIMAL_NUMBER, "PRawGlobalValidator/invalid-lprad");
        require(upperPrecomputedRateAllowedDeviation_ <= lowerPrecomputedRateAllowedDeviation_, "PRawGlobalValidator/invalid-uprad");
        require(allowedDeviationIncrease_ <= TWENTY_SEVEN_DECIMAL_NUMBER, "PRawGlobalValidator/invalid-adi");
        require(Kp_ != 0, "PRawGlobalValidator/null-sg");
        require(
          feedbackOutputUpperBound_ <= multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER) &&
          feedbackOutputLowerBound_ >= -int(multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER)) && feedbackOutputLowerBound_ < 0,
          "PRawGlobalValidator/invalid-foub-or-folb"
        );
        require(periodSize_ > 0, "PRawGlobalValidator/invalid-ps");
        require(uint(importedState[0]) <= now, "PRawGlobalValidator/invalid-imported-time");
        require(noiseBarrier_ <= EIGHTEEN_DECIMAL_NUMBER, "PRawGlobalValidator/invalid-nb");
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

    // --- Boolean Logic ---
    function both(bool x, bool y) internal pure returns (bool z) {
        assembly{ z := and(x, y)}
    }

    // --- Administration ---
    function modifyParameters(bytes32 parameter, address addr) external isAuthority {
        if (parameter == "seedProposer") {
          readers[seedProposer] = 0;
          seedProposer = addr;
          readers[seedProposer] = 1;
        }
        else revert("PRawGlobalValidator/modify-unrecognized-param");
    }
    function modifyParameters(bytes32 parameter, uint256 val) external isAuthority {
        if (parameter == "nb") {
          require(val <= EIGHTEEN_DECIMAL_NUMBER, "PRawGlobalValidator/invalid-nb");
          noiseBarrier = val;
        }
        else if (parameter == "ps") {
          require(val > 0, "PRawGlobalValidator/null-ps");
          periodSize = val;
        }
        else if (parameter == "mrt") {
          require(both(val > 0, val <= defaultGlobalTimeline), "PRawGlobalValidator/invalid-mrt");
          minRateTimeline = val;
        }
        else if (parameter == "foub") {
          require(val <= multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER), "PRawGlobalValidator/big-foub");
          feedbackOutputUpperBound = val;
        }
        else if (parameter == "lprad") {
          require(val <= EIGHTEEN_DECIMAL_NUMBER && val >= upperPrecomputedRateAllowedDeviation, "PRawGlobalValidator/invalid-lprad");
          lowerPrecomputedRateAllowedDeviation = val;
        }
        else if (parameter == "uprad") {
          require(val <= EIGHTEEN_DECIMAL_NUMBER && val <= lowerPrecomputedRateAllowedDeviation, "PRawGlobalValidator/invalid-uprad");
          upperPrecomputedRateAllowedDeviation = val;
        }
        else if (parameter == "adi") {
          require(val <= TWENTY_SEVEN_DECIMAL_NUMBER, "PRawGlobalValidator/invalid-adi");
          allowedDeviationIncrease = val;
        }
        else if (parameter == "dgt") {
          require(val > 0, "PRawGlobalValidator/invalid-dgt");
          defaultGlobalTimeline = val;
        }
        else revert("PRawGlobalValidator/modify-unrecognized-param");
    }
    function modifyParameters(bytes32 parameter, int256 val) external isAuthority {
        if (parameter == "folb") {
          require(
            val >= -int(multiply(TWENTY_SEVEN_DECIMAL_NUMBER, EIGHTEEN_DECIMAL_NUMBER)) && val < 0,
            "PRawGlobalValidator/invalid-folb"
          );
          feedbackOutputLowerBound = val;
        }
        else if (parameter == "sg") {
          require(val != 0, "PRawGlobalValidator/null-sg");
          Kp = val;
        }
        else revert("PRawGlobalValidator/modify-unrecognized-param");
    }

    // --- P Specific Math ---
    function riemannSum(int x, int y) internal pure returns (int z) {
        return addition(x, y) / 2;
    }
    function absolute(int x) internal pure returns (uint z) {
        z = (x < 0) ? uint(-x) : uint(x);
    }

    // --- PI Utils ---
    function oll() public isReader view returns (uint256) {
        return deviationObservations.length;
    }
    function getBoundedRedemptionRate(int pOutput) public isReader view returns (uint256, uint256) {
        int  boundedPOutput = pOutput;
        uint newRedemptionRate;
        uint rateTimeline = defaultGlobalTimeline;

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
    function breaksNoiseBarrier(uint piSum, uint redemptionPrice) public isReader view returns (bool) {
        uint deltaNoise = subtract(multiply(uint(2), EIGHTEEN_DECIMAL_NUMBER), noiseBarrier);
        return piSum >= subtract(divide(multiply(redemptionPrice, deltaNoise), EIGHTEEN_DECIMAL_NUMBER), redemptionPrice);
    }
    function correctPreComputedRate(uint precomputedRate, uint contractComputedRate, uint precomputedAllowedDeviation) public isReader view returns (bool) {
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
    function getGainAdjustedPOutput(int proportionalTerm) public isReader view returns (int256) {
        return multiply(proportionalTerm, int(Kp)) / int(EIGHTEEN_DECIMAL_NUMBER);
    }

    // --- Rate Validation ---
    function validateSeed(
      uint seed,
      uint inputAccumulatedPreComputedRate,
      uint marketPrice,
      uint redemptionPrice,
      uint ,
      uint precomputedAllowedDeviation
    ) external returns (uint256) {
        require(seedProposer == msg.sender, "PRawGlobalValidator/invalid-msg-sender");
        require(subtract(now, lastUpdateTime) >= periodSize || lastUpdateTime == 0, "PRawGlobalValidator/wait-more");
        int256 proportionalTerm = subtract(int(redemptionPrice), multiply(int(marketPrice), int(10**9)));
        deviationObservations.push(DeviationObservation(now, proportionalTerm));
        lastUpdateTime = now;
        int pOutput = getGainAdjustedPOutput(proportionalTerm);
        if (
          breaksNoiseBarrier(absolute(pOutput), redemptionPrice) &&
          pOutput != 0
        ) {
          (uint newRedemptionRate, ) = getBoundedRedemptionRate(pOutput);
          uint256 sanitizedAllowedDeviation =
            (precomputedAllowedDeviation > upperPrecomputedRateAllowedDeviation) ?
            upperPrecomputedRateAllowedDeviation : precomputedAllowedDeviation;
          require(
            correctPreComputedRate(inputAccumulatedPreComputedRate, newRedemptionRate, sanitizedAllowedDeviation),
            "PRawGlobalValidator/invalid-seed"
          );
          return seed;
        } else {
          return TWENTY_SEVEN_DECIMAL_NUMBER;
        }
    }
    function getNextRedemptionRate(uint marketPrice, uint redemptionPrice)
      public isReader view returns (uint256, int256, uint256) {
        int256 proportionalTerm = subtract(int(redemptionPrice), multiply(int(marketPrice), int(10**9)));
        int pOutput = getGainAdjustedPOutput(proportionalTerm);
        if (
          breaksNoiseBarrier(absolute(pOutput), redemptionPrice) &&
          pOutput != 0
        ) {
          (uint newRedemptionRate, uint rateTimeline) = getBoundedRedemptionRate(pOutput);
          return (newRedemptionRate, proportionalTerm, rateTimeline);
        } else {
          return (TWENTY_SEVEN_DECIMAL_NUMBER, proportionalTerm, defaultGlobalTimeline);
        }
    }

    // --- Parameter Getters ---
    function rt(uint marketPrice, uint redemptionPrice, uint IGNORED) external isReader view returns (uint256) {
        (, , uint rateTimeline) = getNextRedemptionRate(marketPrice, redemptionPrice);
        return rateTimeline;
    }
    function sg() external isReader view returns (int256) {
        return Kp;
    }
    function nb() external isReader view returns (uint256) {
        return noiseBarrier;
    }
    function drr() external isReader view returns (uint256) {
        return defaultRedemptionRate;
    }
    function foub() external isReader view returns (uint256) {
        return feedbackOutputUpperBound;
    }
    function folb() external isReader view returns (int256) {
        return feedbackOutputLowerBound;
    }
    function pscl() external isReader view returns (int256) {
        return int(TWENTY_SEVEN_DECIMAL_NUMBER);
    }
    function ps() external isReader view returns (uint256) {
        return periodSize;
    }
    function dos(uint256 i) external isReader view returns (uint256, int256) {
        return (deviationObservations[i].timestamp, deviationObservations[i].proportional);
    }
    function lprad() external isReader view returns (uint256) {
        return lowerPrecomputedRateAllowedDeviation;
    }
    function uprad() external isReader view returns (uint256) {
        return upperPrecomputedRateAllowedDeviation;
    }
    function adi() external isReader view returns (uint256) {
        return allowedDeviationIncrease;
    }
    function mrt() external isReader view returns (uint256) {
        return minRateTimeline;
    }
    function lut() external isReader view returns (uint256) {
        return lastUpdateTime;
    }
    function dgt() external isReader view returns (uint256) {
        return defaultGlobalTimeline;
    }
    function adat() external isReader view returns (uint256) {
        uint elapsed = subtract(now, lastUpdateTime);
        if (elapsed <= periodSize) {
          return 0;
        }
        return subtract(elapsed, periodSize);
    }
    function tlv() external isReader view returns (uint256) {
        uint elapsed = (lastUpdateTime == 0) ? 0 : subtract(now, lastUpdateTime);
        return elapsed;
    }
}
