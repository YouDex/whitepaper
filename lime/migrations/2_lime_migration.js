var MyContract = artifacts.require("TokenLime");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
