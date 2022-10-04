import Fuchswert from './contracts/Fuchswert.json'
import Migrations from './contracts/Migrations.json'

const options = {
  web3: {
    block: false,
    // customProvider:{},
    fallback: {
      type: 'ws',
      url: 'ws://127.0.0.1:7545'
    }
  },
  contracts: [Fuchswert,Migrations],
  events: {
  },
  polls: {
    accounts: 15000
  }
}

export default options
