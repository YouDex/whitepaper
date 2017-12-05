pragma solidity ^0.4.18;


import "../token/StandardToken.sol";


/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract TokenLime is StandardToken {

  string public constant name = "Lime";
  string public constant symbol = "LIME";
  uint8 public constant decimals = 9;

  uint256 public constant INITIAL_SUPPLY = 100000000;

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function TokenLime() public {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }

}
