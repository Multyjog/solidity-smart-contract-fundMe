//  Get funds
//  Withdraw funds
//  Set a minimum funding value

// SPD-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Contract interface
interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract FundMe {

    uint256 public minimumUsd = 5;

    function fund() public payable {
        // Reverts undoes all the changes made by function even if they was made before
        require(msg.value >= minimumUsd, "Didnt sent enough ETH"); // 1e18 = 1 ETH = 1000000000000000000 = 1 * 10 ** 18
    }

    function getPrice() public {
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI
    }
    function getConversionRate() public {}
    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
    // function withdraw() public {}
}