const path = require('path')
const HDWalletProvider = require("@truffle/hdwallet-provider");
require('dotenv').config()

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  contracts_build_directory: path.join(__dirname, "vapp/src/contracts"),
  // compilers: {
  //   solc: {
  //     version: "^0.8.0",
  //   }
  // }
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    },
    goerli: {
      provider: () => {
        return new HDWalletProvider(
          {
            mnemonic: process.env.GOERLI_MNEMONIC,
            providerOrUrl: 'https://goerli.infura.io/v3/' + process.env.INFURA_API_KEY,
            addressIndex: 0
          }
        )
      },
      network_id: '5',
      gas: 4465030,
      gasPrice: 10000000000,
    },

  }
};
