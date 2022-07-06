// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract test1 is ERC20{

    constructor() ERC20("",""){
        _mint(msg.sender, 1000000000000000000);
    }
    
}