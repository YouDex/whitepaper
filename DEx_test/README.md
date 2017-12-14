December 13 is a wonderful day! At 3-00 pm, the first successful atomic exchange of BTC / ETX was based on the Limex protocol.
It was implemented in the test networks Bitcoin (testnet3) and Etherium (Rinkeby). A specially developed web application was used for atomic exchange.
The exchange log is listed below. As can be seen from it, Alice bought 0,3BTC from BobET 3,5ETH for 0,14BTC. 
Exchange transactions can be tracked in test blockchains using the following links:
https://live.blockcypher.com/btc-testnet/tx/abcae96714fae2baf13d1e82f0d0e7e77fdf54f153c2653d59c67dfb935e173c/
https://rinkeby.etherscan.io/tx/0x820d755b784460a749764343c8c8a0e99728a58a71c913f86fe8f8ea7d1bdfcc
Screenshots and videos will be published later, as well as information on the successful exchange of real currency.

Direct exchange log:
1: Alice place order: 0.140615BTC to  3.500ETH with pledge:2418.444LIME	dex:19499:77
2: Bob fill order: 0.141BTC to  3.500ETH with pledge:2418.444LIME	dex:19499:77
3: Smart contract DEx: execute startDEx()	dex:19499:77
4: Smart contract DEx: form and send Tx startDEx()	dex:19499:77
5: Smart contract DEx: Tx startDEx success	dex:19499:77
order=21 from 0x42b5fa88092df5920351ceb2186471b76b1c1a6c to 0xe050b09273bcf676ef76c9354eb1a2dcbc925f4d via: 0x8ce499e792da77298a2e864ddd16e555bd98724c eth: 3.5 btc: 0.14061495 pledge (L): 2418.4477
6: Alice make pledge Tx	dex:19499:77
7: Plasmoid send Tx into Limex	dex:19499:77
8: Transfer LIMEs Tx success		dex:19499:77
9: Bob make pledge Tx	dex:19499:77
10: Plasmoid send Tx into Limex	dex:19499:77
11: Transfer LIMEs Tx success	dex:19499:77
12: Smart contract DEx: execute inDepo()	dex:19499:77
13: Smart contract DEx: form and send inDepo Tx, orderID= 277	dex:19499:77
14: Smart contract DEx: inDepo Tx is successful, orderID= 277	dex:19499:77
15: Alice & Bob make Txs for atomic swap		dex:19499:77
16: Alice send 0.14061495BTC to Bob Tx into Bitcoin	dex:19499:77
17: Bob send 3.5ETH to Alice Tx into Ethereum	dex:19499:77
18: Success ETH TX, hash: 0x820d755b784460a749764343c8c8a0e99728a58a71c913f86fe8f8ea7d1bdfcc	dex:19499:77
Wait confirm from Ethereum
19: Success BTC TX, hash: abcae96714fae2baf13d1e82f0d0e7e77fdf54f153c2653d59c67dfb935e173c	dex:19827:177
BTC Tx is checking for confirmations	dex:19499:77
20: Confirm ETH TX in block 1407586, hash 0x820d755b784460a749764343c8c8a0e99728a58a71c913f86fe8f8ea7d1bdfcc	dex:19862:177
Atomic swap BTC/ETH is in progress, BTC was send 	dex:19499:77
21: Confirm BTC TX in block 1254681, hash abcae96714fae2baf13d1e82f0d0e7e77fdf54f153c2653d59c67dfb935e173c	dex:19499:77
Atomic swap is finished. Plasmoid make Tx for cancel Alice’s pledge	dex:19499:77
22: Plasmoid send Tx into Limex	dex:19499:77
23: Transfer LIMEs Tx is success	dex:19499:77
24: Plasmoid make Tx for cancel Bob’s pledge	dex:19499:77
25: Plasmoid send Tx into Limex	dex:19499:77
26: Transfer LIMEs Tx is success	dex:19499:77
27: Smart contract DEx: execute outDepo()		dex:19499:77
28: Smart contract DEx: form and send OutDepo Tx, orderID= 277 	dex:19499:77
29: Smart contract DEx: OutDepo Tx is success	dex:19499:77
30: Fine! Atomic swap BTC/ETH is finished successfully!		dex:19499:5
