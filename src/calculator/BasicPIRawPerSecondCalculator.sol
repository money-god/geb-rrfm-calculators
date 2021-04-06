/// BasicPIRawPerSecondCalculator.sol

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

pragma solidity 0.6.7;

import "../math/SafeMath.sol";
import "../math/SignedSafeMath.sol";

contract BasicPIRawPerSecondCalculator is SafeMath, SignedSafeMath {
    // --- Authorities ---
    mapping (address => uint) public authorities;
    function addAuthority(address account) external isAuthority { authorities[account] = 1; }
    function removeAuthority(address account) external isAuthority { authorities[account] = 0; }
    modifier isAuthority {
        require(authorities[msg.sender] == 1, "BasicPIRawPerSecondCalculator/not-an-authority");
        _;
    }

    // --- Readers ---
    mapping (address => uint) public readers;
    function addReader(address account) external isAuthority { readers[account] = 1; }
    function removeReader(address account) external isAuthority { readers[account] = 0; }
    modifier isReader {
        require(either(allReaderToggle == 1, readers[msg.sender] == 1), "BasicPIRawPerSecondCalculator/not-a-reader");
        _;
    }

    // --- Structs ---
    struct ControllerGains {
        // This value is multiplied with the proportional term
        int Kp;                                      // [EIGHTEEN_DECIMAL_NUMBER]
        // This value is multiplied with priceDeviationCumulative
        int Ki;                                      // [EIGHTEEN_DECIMAL_NUMBER]
    }
    struct DeviationObservation {
        // The timestamp when this observation was stored
        uint timestamp;
        // The proportional term stored in this observation
        int  proportional;
        // The integral term stored in this observation
        int  integral;
    }

    // -- Static & Default Variables ---
    // The Kp and Ki values used in this calculator
    ControllerGains internal controllerGains;

    // Flag that can allow anyone to read variables
    uint256 public   allReaderToggle;
    // The default redemption rate
    uint256 internal defaultRedemptionRate;          // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // The minimum delay between two computeRate calls
    uint256 internal integralPeriodSize;             // [seconds]

    // --- Fluctuating/Dynamic Variables ---
    // Array of observations storing the latest timestamp as well as the proportional and integral terms
    DeviationObservation[] internal deviationObservations;
    // Array of historical priceDeviationCumulative
    int256[]               internal historicalCumulativeDeviations;

    // The integral term (sum of deviations at each calculateRate call minus the leak applied at every call)
    int256  internal priceDeviationCumulative;             // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // The per second leak applied to priceDeviationCumulative before the latest deviation is added
    uint256 internal perSecondCumulativeLeak;              // [TWENTY_SEVEN_DECIMAL_NUMBER]
    // Timestamp of the last update
    uint256 internal lastUpdateTime;                       // [timestamp]
    // Flag indicating that the rate computed is per second
    uint256 constant internal defaultGlobalTimeline = 1;

    // The address allowed to call calculateRate
    address public seedProposer;

    uint256 internal constant NEGATIVE_RATE_LIMIT         = TWENTY_SEVEN_DECIMAL_NUMBER - 1;
    uint256 internal constant TWENTY_SEVEN_DECIMAL_NUMBER = 10 ** 27;
    uint256 internal constant EIGHTEEN_DECIMAL_NUMBER     = 10 ** 18;

    constructor(
        int256 Kp_,
        int256 Ki_,
        uint256 perSecondCumulativeLeak_,
        uint256 integralPeriodSize_,
        int256[] memory importedState
    ) public {
        defaultRedemptionRate           = TWENTY_SEVEN_DECIMAL_NUMBER;

        require(integralPeriodSize_ > 0, "BasicPIRawPerSecondCalculator/invalid-ips");
        require(uint(importedState[0]) <= now, "BasicPIRawPerSecondCalculator/invalid-imported-time");
        require(both(Kp_ >= -int(EIGHTEEN_DECIMAL_NUMBER), Kp_ <= int(EIGHTEEN_DECIMAL_NUMBER)), "BasicPIRawPerSecondCalculator/invalid-sg");
        require(both(Ki_ >= -int(EIGHTEEN_DECIMAL_NUMBER), Ki_ <= int(EIGHTEEN_DECIMAL_NUMBER)), "BasicPIRawPerSecondCalculator/invalid-ag");

        authorities[msg.sender]         = 1;
        readers[msg.sender]             = 1;

        integralPeriodSize              = integralPeriodSize_;
        controllerGains                 = ControllerGains(Kp_, Ki_);
        perSecondCumulativeLeak         = perSecondCumulativeLeak_;
        priceDeviationCumulative        = importedState[3];
        lastUpdateTime                  = uint(importedState[0]);

        if (importedState[4] > 0) {
          deviationObservations.push(
            DeviationObservation(uint(importedState[4]), importedState[1], importedState[2])
          );
        }

        historicalCumulativeDeviations.push(priceDeviationCumulative);
    }

    // --- Boolean Logic ---
    function both(bool x, bool y) internal pure returns (bool z) {
        assembly{ z := and(x, y)}
    }
    function either(bool x, bool y) internal pure returns (bool z) {
        assembly{ z := or(x, y)}
    }

    // --- Administration ---
    /*
    * @notify Modify an address parameter
    * @param parameter The name of the address parameter to change
    * @param addr The new address for the parameter
    */
    function modifyParameters(bytes32 parameter, address addr) external isAuthority {
        if (parameter == "seedProposer") {
          readers[seedProposer] = 0;
          seedProposer = addr;
          readers[seedProposer] = 1;
        }
        else revert("BasicPIRawPerSecondCalculator/modify-unrecognized-param");
    }
    /*
    * @notify Modify an uint256 parameter
    * @param parameter The name of the parameter to change
    * @param val The new value for the parameter
    */
    function modifyParameters(bytes32 parameter, uint256 val) external isAuthority {
        if (parameter == "ips") {
          require(val > 0, "BasicPIRawPerSecondCalculator/null-ips");
          integralPeriodSize = val;
        }
        else if (parameter == "pscl") {
          require(val <= TWENTY_SEVEN_DECIMAL_NUMBER, "BasicPIRawPerSecondCalculator/invalid-pscl");
          perSecondCumulativeLeak = val;
        }
        else if (parameter == "allReaderToggle") {
          allReaderToggle = val;
        }
        else revert("BasicPIRawPerSecondCalculator/modify-unrecognized-param");
    }
    /*
    * @notify Modify an int256 parameter
    * @param parameter The name of the parameter to change
    * @param val The new value for the parameter
    */
    function modifyParameters(bytes32 parameter, int256 val) external isAuthority {
        if (parameter == "sg") {
          require(both(val >= -int(EIGHTEEN_DECIMAL_NUMBER), val <= int(EIGHTEEN_DECIMAL_NUMBER)), "BasicPIRawPerSecondCalculator/invalid-sg");
          controllerGains.Kp = val;
        }
        else if (parameter == "ag") {
          require(both(val >= -int(EIGHTEEN_DECIMAL_NUMBER), val <= int(EIGHTEEN_DECIMAL_NUMBER)), "BasicPIRawPerSecondCalculator/invalid-ag");
          controllerGains.Ki = val;
        }
        else if (parameter == "pdc") {
          require(controllerGains.Ki == 0, "BasicPIRawPerSecondCalculator/cannot-set-pdc");
          priceDeviationCumulative = val;
        }
        else revert("BasicPIRawPerSecondCalculator/modify-unrecognized-param");
    }

    // --- PI Specific Math ---
    function riemannSum(int x, int y) internal pure returns (int z) {
        return addition(x, y) / 2;
    }
    function absolute(int x) internal pure returns (uint z) {
        z = (x < 0) ? uint(-x) : uint(x);
    }

    // --- PI Utils ---
    /*
    * Return the last proportional term stored in deviationObservations
    */
    function getLastProportionalTerm() public isReader view returns (int256) {
        if (oll() == 0) return 0;
        return deviationObservations[oll() - 1].proportional;
    }
    /*
    * Return the last integral term stored in deviationObservations
    */
    function getLastIntegralTerm() external isReader view returns (int256) {
        if (oll() == 0) return 0;
        return deviationObservations[oll() - 1].integral;
    }
    /*
    * @notice Return the length of deviationObservations
    */
    function oll() public isReader view returns (uint256) {
        return deviationObservations.length;
    }
    /*
    * @notice Return the bounded redemption rate as well as the timeline over which that rate will take effect
    * @param piOutput The raw redemption rate computed from the proportional and integral terms
    */
    function getBoundedRedemptionRate(int piOutput) public isReader view returns (uint256, uint256) {
        uint newRedemptionRate;

        // newRedemptionRate cannot be lower than 1 because of the way rpower is designed
        bool negativeOutputExceedsHundred = (piOutput < 0 && -piOutput >= int(defaultRedemptionRate));

        // If it is smaller than 1, set it to the nagative rate limit
        if (negativeOutputExceedsHundred) {
          newRedemptionRate = NEGATIVE_RATE_LIMIT;
        } else {
          // If piOutput is lower than -int(NEGATIVE_RATE_LIMIT) set newRedemptionRate to 1
          if (piOutput < 0 && piOutput <= -int(NEGATIVE_RATE_LIMIT)) {
            newRedemptionRate = uint(addition(int(defaultRedemptionRate), -int(NEGATIVE_RATE_LIMIT)));
          } else {
            // Otherwise add defaultRedemptionRate and piOutput together
            newRedemptionRate = uint(addition(int(defaultRedemptionRate), piOutput));
          }
        }

        return (newRedemptionRate, defaultGlobalTimeline);
    }
    /*
    * @notice Compute a new priceDeviationCumulative (integral term)
    * @param proportionalTerm The proportional term (redemptionPrice - marketPrice)
    * @param accumulatedLeak The total leak applied to priceDeviationCumulative before it is summed with the new time adjusted deviation
    */
    function getNextPriceDeviationCumulative(int proportionalTerm, uint accumulatedLeak) public isReader view returns (int256, int256) {
        int256 lastProportionalTerm      = getLastProportionalTerm();
        uint256 timeElapsed              = (lastUpdateTime == 0) ? 0 : subtract(now, lastUpdateTime);
        int256 newTimeAdjustedDeviation  = multiply(riemannSum(proportionalTerm, lastProportionalTerm), int(timeElapsed));
        int256 leakedPriceCumulative     = divide(multiply(int(accumulatedLeak), priceDeviationCumulative), int(TWENTY_SEVEN_DECIMAL_NUMBER));

        return (
          addition(leakedPriceCumulative, newTimeAdjustedDeviation),
          newTimeAdjustedDeviation
        );
    }
    /*
    * @notice Apply Kp to the proportional term and Ki to the integral term (by multiplication) and then sum P and I
    * @param proportionalTerm The proportional term
    * @param integralTerm The integral term
    */
    function getGainAdjustedPIOutput(int proportionalTerm, int integralTerm) public isReader view returns (int256) {
        (int adjustedProportional, int adjustedIntegral) = getGainAdjustedTerms(proportionalTerm, integralTerm);
        return addition(adjustedProportional, adjustedIntegral);
    }
    /*
    * @notice Independently return and calculate P * Kp and I * Ki
    * @param proportionalTerm The proportional term
    * @param integralTerm The integral term
    */
    function getGainAdjustedTerms(int proportionalTerm, int integralTerm) public isReader view returns (int256, int256) {
        return (
          multiply(proportionalTerm, int(controllerGains.Kp)) / int(EIGHTEEN_DECIMAL_NUMBER),
          multiply(integralTerm, int(controllerGains.Ki)) / int(EIGHTEEN_DECIMAL_NUMBER)
        );
    }

    // --- Rate Validation/Calculation ---
    /*
    * @notice Compute a new redemption rate
    * @param marketPrice The system coin market price
    * @param redemptionPrice The system coin redemption price
    * @param accumulatedLeak The total leak that will be applied to priceDeviationCumulative (the integral) before the latest
    *        proportional term is added
    */
    function computeRate(
      uint marketPrice,
      uint redemptionPrice,
      uint accumulatedLeak
    ) external returns (uint256) {
        // Only the seed proposer can call this
        require(seedProposer == msg.sender, "BasicPIRawPerSecondCalculator/invalid-msg-sender");
        // Ensure that at least integralPeriodSize seconds passed since the last update or that this is the first update
        require(subtract(now, lastUpdateTime) >= integralPeriodSize || lastUpdateTime == 0, "BasicPIRawPerSecondCalculator/wait-more");
        // The proportional term is just redemption - market. Market is read as having 18 decimals so we multiply by 10**9
        // in order to have 27 decimals like the redemption price
        int256 proportionalTerm = subtract(int(redemptionPrice), multiply(int(marketPrice), int(10**9)));
        // Update the integral term by passing the proportional (current deviation) and the total leak that will be applied to the integral
        updateDeviationHistory(proportionalTerm, accumulatedLeak);
        // Set the last update time to now
        lastUpdateTime = now;
        // Multiply P by Kp and I by Ki and then sum P & I in order to return the result
        int256 piOutput = getGainAdjustedPIOutput(proportionalTerm, priceDeviationCumulative);
        // If the sum is not null, submit the computed rate
        if (piOutput != 0) {
          // Make sure the rate is correctly bounded
          (uint newRedemptionRate, ) = getBoundedRedemptionRate(piOutput);
          return newRedemptionRate;
        } else {
          return TWENTY_SEVEN_DECIMAL_NUMBER;
        }
    }
    /*
    * @notice Push new observations in deviationObservations & historicalCumulativeDeviations while also updating priceDeviationCumulative
    * @param proportionalTerm The proportionalTerm
    * @param accumulatedLeak The total leak (similar to a negative interest rate) applied to priceDeviationCumulative before proportionalTerm is added to it
    */
    function updateDeviationHistory(int proportionalTerm, uint accumulatedLeak) internal {
        (int256 virtualDeviationCumulative, ) =
          getNextPriceDeviationCumulative(proportionalTerm, accumulatedLeak);
        priceDeviationCumulative = virtualDeviationCumulative;
        historicalCumulativeDeviations.push(priceDeviationCumulative);
        deviationObservations.push(DeviationObservation(now, proportionalTerm, priceDeviationCumulative));
    }
    /*
    * @notice Compute and return the upcoming redemption rate
    * @param marketPrice The system coin market price
    * @param redemptionPrice The system coin redemption price
    * @param accumulatedLeak The total leak applied to priceDeviationCumulative before it is summed with the proportionalTerm
    */
    function getNextRedemptionRate(uint marketPrice, uint redemptionPrice, uint accumulatedLeak)
      public isReader view returns (uint256, int256, int256, uint256) {
        // The proportional term is just redemption - market. Market is read as having 18 decimals so we multiply by 10**9
        // in order to have 27 decimals like the redemption price
        int256 proportionalTerm = subtract(int(redemptionPrice), multiply(int(marketPrice), int(10**9)));
        // Get the new integral term without updating the value of priceDeviationCumulative
        (int cumulativeDeviation, ) = getNextPriceDeviationCumulative(proportionalTerm, accumulatedLeak);
        // Multiply P by Kp and I by Ki and then sum P & I in order to return the result
        int piOutput = getGainAdjustedPIOutput(proportionalTerm, cumulativeDeviation);
        // If the sum is not null, submit the computed rate
        if (piOutput != 0) {
          // Make sure to bound the rate
          (uint newRedemptionRate, uint rateTimeline) = getBoundedRedemptionRate(piOutput);
          return (newRedemptionRate, proportionalTerm, cumulativeDeviation, rateTimeline);
        } else {
          return (TWENTY_SEVEN_DECIMAL_NUMBER, proportionalTerm, cumulativeDeviation, defaultGlobalTimeline);
        }
    }

    // --- Parameter Getters ---
    /*
    * @notice Get the timeline over which the computed redemption rate takes effect e.g rateTimeline = 3600 so the rate is
    *         computed over 1 hour
    */
    function rt(uint marketPrice, uint redemptionPrice, uint accumulatedLeak) external isReader view returns (uint256) {
        (, , , uint rateTimeline) = getNextRedemptionRate(marketPrice, redemptionPrice, accumulatedLeak);
        return rateTimeline;
    }
    /*
    * @notice Return Kp
    */
    function sg() external isReader view returns (int256) {
        return controllerGains.Kp;
    }
    /*
    * @notice Return Ki
    */
    function ag() external isReader view returns (int256) {
        return controllerGains.Ki;
    }
    function drr() external isReader view returns (uint256) {
        return defaultRedemptionRate;
    }
    function ips() external isReader view returns (uint256) {
        return integralPeriodSize;
    }
    /*
    * @notice Return the data from a deviation observation
    */
    function dos(uint256 i) external isReader view returns (uint256, int256, int256) {
        return (deviationObservations[i].timestamp, deviationObservations[i].proportional, deviationObservations[i].integral);
    }
    function hcd(uint256 i) external isReader view returns (int256) {
        return historicalCumulativeDeviations[i];
    }
    function pdc() external isReader view returns (int256) {
        return priceDeviationCumulative;
    }
    function pscl() external isReader view returns (uint256) {
        return perSecondCumulativeLeak;
    }
    function lut() external isReader view returns (uint256) {
        return lastUpdateTime;
    }
    function dgt() external isReader view returns (uint256) {
        return defaultGlobalTimeline;
    }
    /*
    * @notice Returns the time elapsed since the last calculateRate call minus integralPeriodSize
    */
    function adat() external isReader view returns (uint256) {
        uint elapsed = subtract(now, lastUpdateTime);
        if (elapsed < integralPeriodSize) {
          return 0;
        }
        return subtract(elapsed, integralPeriodSize);
    }
    /*
    * @notice Returns the time elapsed since the last calculateRate call
    */
    function tlv() external isReader view returns (uint256) {
        uint elapsed = (lastUpdateTime == 0) ? 0 : subtract(now, lastUpdateTime);
        return elapsed;
    }
}
