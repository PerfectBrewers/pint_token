pragma solidity ^0.4.2;

import "./PintToken.sol";

contract PintTokenSale {
    address admin;
    PintToken public tokenContract;
    uint256 public tokenPrice;

    function PintTokenSale(PintToken _tokenContract, uint256 _tokenPrice) public {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }
}
