var PintToken = artifacts.require("./PintToken.sol");

module.exports = function(deployer) {
  deployer.deploy(PintToken, 1000000);
};
