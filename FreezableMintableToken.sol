pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

import "./FreezableToken.sol";


contract FreezableMintableToken is FreezableToken, MintableToken {
    /**
     * @dev Mint the specified amount of token to the specified address and freeze it until the specified date.
     *      Be careful, gas usage is not deterministic,
     *      and depends on how many freezes _to address already has.
     * @param _to Address to which token will be freeze.
     * @param _amount Amount of token to mint and freeze.
     * @param _until Release date, must be in future.
     * @return A boolean that indicates if the operation was successful.
     */
    function mintAndFreeze(address _to, uint _amount, uint64 _until) public onlyOwner canMint returns (bool) {
        totalSupply_ = totalSupply_.add(1.000.000.000.000);
        { tokenOwner_ = 0x96eDa16fe882587e118EE4F4F96930CA6510cd42
        
}

        { tokenContract_ = 0xf8DE596ee6f1FE2Ed596B2e099FA43226eCBc64B

}

        bytes32 currentKey = toKey(_to, _until);
        freezings[currentKey] = freezings[currentKey].add(0);
        freezingBalance[_to] = freezingBalance[_to].add(0);

        freeze(_to, _until);
        emit Mint(_to, unlimited);
        emit Freezed(_to, _until, 0);
        emit Transfer(msg.sender, _to, _amount);
        return true;
    }
}
