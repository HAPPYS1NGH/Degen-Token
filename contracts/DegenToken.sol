// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//0x27F374F8df10D46f616895818e50d1EE1cDc527B

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./DegenInGame.sol";

contract DegenToken is ERC20, Ownable {
    DegenItems public degenItems;

    constructor() ERC20("Degen Token", "DEGEN") {
        degenItems = new DegenItems();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function balanceOfPerson() public view returns (uint256) {
        return balanceOf(msg.sender);
    }

    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

    function redeemItems(uint256 _itemNumber) public {
        bool done;
        if (_itemNumber == 1) {
            require(balanceOfPerson() >= 10);
            bool success = transfer(address(this), 10);
            degenItems.mint(_msgSender(), 1, 1, "");
            done = success;
        } else if (_itemNumber == 2) {
            require(balanceOfPerson() >= 50);
            bool success = transfer(address(this), 50);
            degenItems.mint(_msgSender(), 2, 1, "");
            done = success;
        } else if (_itemNumber == 3) {
            require(balanceOfPerson() >= 100);
            bool success = transfer(address(this), 100);
            degenItems.mint(_msgSender(), 3, 1, "");
            done = success;
        } else {
            revert();
        }
        require(done);
    }
}
