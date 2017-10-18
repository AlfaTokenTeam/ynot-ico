pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract YNOT is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function YNOT(address _owner)  UpgradeableToken(_owner) {
    name = "YNOT";
    symbol = "YYY";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}