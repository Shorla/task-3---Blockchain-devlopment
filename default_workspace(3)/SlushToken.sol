// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SlushToken is ERC20, Ownable {
    uint256 public rate = 1000 * 10 ** decimals();

    constructor() ERC20("SlushToken", "SLK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

        event buyToken(address, uint);
        
    receive() external payable {
        emit buyToken(msg.sender, msg.value);
    }
}