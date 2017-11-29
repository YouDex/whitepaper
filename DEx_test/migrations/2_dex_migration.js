var Migrations = artifacts.require("./DEx.sol");

module.exports = function(deployer) {
    deployer.deploy(Migrations);
};