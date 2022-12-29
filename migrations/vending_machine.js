const VendingMachine = artifacts.require(VendingMachine);

module.exports = function (deloyer) {
    deloyer.deploy(VendingMachine);
}