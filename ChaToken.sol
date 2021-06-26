// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "ERC20.sol";
import "Ownable.sol";


// ChaToken with Governance.
contract ChaToken is ERC20("ChaToken", "CHA"), Ownable {
    /// @notice Creates `_amount` token to `_to`. Must only be called by the owner (MasterChef).
    function mint(address _to, uint256 _amount) public onlyOwner {
        require(totalSupply() + _amount <= 200000000* 1e18, "total supply exceeds limit");
        _mint(_to, _amount);
    }
}
