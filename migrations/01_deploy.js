const TikTok = artifacts.require("TikTok");

module.exports = async function (deployer) {
    await deployer.deploy(TikTok);
    }

// module.exports = function (deployer) {
//     deployer.deploy(TikTok);
//     }