pragma solidity ^0.4.2;

contract PintToken {

    string public name = "Pint Token";
    string public symbol = "PNT";
    string public standard = "PNT Token v.1.0";

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
      );

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    function PintToken (uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        Transfer(msg.sender, _to, _value);

        return true;
    }
}
