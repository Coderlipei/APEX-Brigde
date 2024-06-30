// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract CrossChainBridgeEth is Ownable {
  IERC20 public token;
  address public bscBridgeAddress;

  event Locked(address indexed sender, uint256 amount, uint256 nonce);
    token = IERC20(_token);
  }
  function setBscBridgeAddress(address _bscBridgeAddress) external onlyOwner {
        bscBridgeAddress = _bscBridgeAddress;
  }
  function lock(uint256 amount, uint256 nonce) external {
        require(token.transferFrom(msg.sender, address(this), amount), "Transfer failed");
        emit Locked(msg.sender, amount, nonce);
  }
}


  
