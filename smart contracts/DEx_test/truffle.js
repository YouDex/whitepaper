//var HDWalletProvider = require("truffle-hdwallet-provider");
//var mnemonic = "card manual puzzle smooth swarm chaos buzz impulse half glance imitate crunch";
//var mnemonic = "height burst cross alone hint clap cool apart earth want olympic beauty";


module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // to customize your Truffle configuration!
    networks: {
        /*        development: {
                    host: "localhost",
                    port: 8545,
                    network_id: "*" // Match any network id
                },
        
        ropsten: {
            provider: function() {
                return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/Yqt5FtYMQRGrpp6GSnVe");
            },
            // optional config values:
            gas: 5000000,
            //            gasPrice: ,
            //            from: "0x42b5fA88092dF5920351ceB2186471b76b1C1A6C",
            network_id: "3"
        },
        hdw: {
            provider: function() {
                return new HDWalletProvider(mnemonic, "http://127.0.0.1:8545");
            },
            network_id: "*"
        }, */
        limex: {
            host: "http://10.20.40.2:8080",
            gas: 4700000,
            network_id: "99101217" // Match any network id
        },
        lime: {
            host: "localhost",
            port: 8080,
            gas: 4700000,
            network_id: "99101217" // Match any network id
        }
    }
};