pragma solidity ^0.4.2;

contract PintToken {

    string public name = "Pint Token";
    string public symbol = "PNT";
    string public standard = "PNT Token v.1.0";

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    function PintToken (uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }
}
