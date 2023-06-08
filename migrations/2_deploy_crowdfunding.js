const Crowdfunding = artifacts.require("./Crowdfunding.sol");

module.exports = async function(deployer) {
    deployer.deploy(Crowdfunding, 
        'Test campaign',
        1,
        5 * 24 * 60,
        '0xFb90Bc55312489307d8bFcE51be8599fD3302f84');
};