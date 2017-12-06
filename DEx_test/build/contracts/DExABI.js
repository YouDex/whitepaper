var DExABI = [{
        "constant": true,
        "inputs": [],
        "name": "ORDER",
        "outputs": [{
            "name": "",
            "type": "uint256"
        }],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "LIME_RATIO",
        "outputs": [{
            "name": "",
            "type": "uint16"
        }],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [{
                "name": "_alice",
                "type": "address"
            },
            {
                "name": "_plasmoid",
                "type": "address"
            },
            {
                "name": "_ethAmount",
                "type": "uint256"
            },
            {
                "name": "_btcAmount",
                "type": "uint256"
            },
            {
                "name": "_fee",
                "type": "uint256"
            }
        ],
        "name": "openDEx",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [{
            "name": "_order",
            "type": "uint256"
        }],
        "name": "inDepo",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [{
            "name": "_order",
            "type": "uint256"
        }],
        "name": "outDepo",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": false,
        "inputs": [{
                "name": "_order",
                "type": "uint256"
            },
            {
                "name": "_alice",
                "type": "address"
            },
            {
                "name": "_plasmoid",
                "type": "address"
            },
            {
                "name": "_ethAmount",
                "type": "uint256"
            },
            {
                "name": "_btcAmount",
                "type": "uint256"
            },
            {
                "name": "_fee",
                "type": "uint256"
            }
        ],
        "name": "closeDEx",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [],
        "name": "VERSION",
        "outputs": [{
            "name": "",
            "type": "string"
        }],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "anonymous": false,
        "inputs": [{
                "indexed": false,
                "name": "_order",
                "type": "uint256"
            },
            {
                "indexed": true,
                "name": "maker",
                "type": "address"
            },
            {
                "indexed": true,
                "name": "taker",
                "type": "address"
            },
            {
                "indexed": true,
                "name": "plasmoid",
                "type": "address"
            },
            {
                "indexed": false,
                "name": "ethAmount",
                "type": "uint256"
            },
            {
                "indexed": false,
                "name": "btcAmount",
                "type": "uint256"
            },
            {
                "indexed": false,
                "name": "pledgeLIMEAmount",
                "type": "uint256"
            },
            {
                "indexed": false,
                "name": "fee",
                "type": "uint256"
            }
        ],
        "name": "StartDEx",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [{
                "indexed": false,
                "name": "_order",
                "type": "uint256"
            },
            {
                "indexed": true,
                "name": "maker",
                "type": "address"
            },
            {
                "indexed": false,
                "name": "taker",
                "type": "address"
            },
            {
                "indexed": true,
                "name": "plasmoid",
                "type": "address"
            },
            {
                "indexed": false,
                "name": "ethAmount",
                "type": "uint256"
            },
            {
                "indexed": false,
                "name": "btcAmount",
                "type": "uint256"
            },
            {
                "indexed": false,
                "name": "fee",
                "type": "uint256"
            }
        ],
        "name": "StopDEx",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [{
            "indexed": false,
            "name": "_order",
            "type": "uint256"
        }],
        "name": "InDepo",
        "type": "event"
    },
    {
        "anonymous": false,
        "inputs": [{
            "indexed": false,
            "name": "_order",
            "type": "uint256"
        }],
        "name": "OutDepo",
        "type": "event"
    }
];