var PintToken = artifacts.require("./PintToken.sol");
var PintTokenSale = artifacts.require("./PintTokenSale.sol");

module.exports = function(deployer) {
  deployer.deploy(PintToken, 1000000).then(function() {
    var tokenPrice = 1000000000000000; // in wei
    return deployer.deploy(PintTokenSale, PintToken.address, tokenPrice);
  });

};
