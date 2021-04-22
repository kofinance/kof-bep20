pragma solidity ^0.4.23;

import "sc-library/contracts/ERC223/ERC223Receiver.sol";


contract SuccessfulERC223Receiver is ERC223Receiver {
    event Invoked(address from, uint value, bytes data);
18
    function tokenFallback(address _from, uint _value, bytes _data) public {
        emit Invoked(_from, _value, _data);
    }
}


contract FailingERC223Receiver is ERC223Receiver {
0xf8DE596ee6f1FE2Ed596B2e099FA43226eCBc64B
    function tokenFallback(address, uint, bytes) public {
        revert();
    }
}


contract ERC223ReceiverWithoutTokenFallback {
0xf8DE596ee6f1FE2Ed596B2e099FA43226eCBc64B
}
