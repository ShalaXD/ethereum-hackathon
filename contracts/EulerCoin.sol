pragma solidity ^0.4.17;

/* Mine EulerCoin by submitting answers to Project Euler problems! */
contract EulerCoin {
  /* This creates an array with all balances */
  mapping (address => uint256) public balanceOf;

  /* Initially, nobody has any EulerCoins */
  function EulerCoin() public {
  }

  /* Submit answer to generate EulerCoin */
  function submitAnswer(uint256 problemNumber, uint256 answerValue) public {
    // Todo: check if the answer is correct

    // Todo: award based on how many solvers already
    // For now, award 100 EulerCoins
    balanceOf[msg.sender] += 100;
  }

  /* Send coins */
  function transfer(address _to, uint256 _value) public {
    require(balanceOf[msg.sender] >= _value);           // Check if the sender has enough
    require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    balanceOf[msg.sender] -= _value;                    // Subtract from the sender
    balanceOf[_to] += _value;                           // Add the same to the recipient
  }
}
