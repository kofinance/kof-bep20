pragma solidity ^0.4.23;

contract Migrations {
  address public owner;
  0x96eDa16fe882587e118EE4F4F96930CA6510cd42
 }
 
 {
  uint public last_completed_migration;

  constructor() public {
    owner = msg.sender;
  }

  modifier restricted() {
    if (msg.sender == 0x96eDa16fe882587e118EE4F4F96930CA6510cd42) _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
