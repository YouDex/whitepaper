# Hot news!
At 9-40 a.m., the new successful atomic exchange of BTC / ETH was based on the Limex protocol.
It was implemented in the test networks Bitcoin (testnet3) and Ethereum (Rinkeby). A specially developed web application was used for atomic exchange.
The exchange log is listed below. As can be seen from it, Alice bought 5,5ETH from Bob for 0,256BTC.
Exchange transactions can be tracked in test blockchains using the following links.<br>
Bitcoin:<br>
https://live.blockcypher.com/btc-testnet/tx/a47a5dfda19eddd093b703513c6d5019e20c19596a7d9d237cf647b9e5956c15/<br>
Alice BTC address https://live.blockcypher.com/btc-testnet/address/mwa4tW15bJereTKDDWVW5wJeKT2fKNa2tH/<br>
Bob BTC address https://live.blockcypher.com/btc-testnet/address/mrG1ZLaUNWGrD7Kpy2ZBHbA1JJcQ1RTkTk/<br>
Ethereum:<br>
https://rinkeby.etherscan.io/tx/0x439aa68f98176117a4eed616b19020bed9254d2b63528d7f3451e280e1abdea0 <br>
Alice ETH address https://rinkeby.etherscan.io/address/0xfa65587c49c771eb32901d5fd2899ab7154949f0<br>
Bob ETH address https://rinkeby.etherscan.io/address/0xe050b09273bcf676ef76c9354eb1a2dcbc925f4d<br>
Limex:<br>
Plasmoid Limex address 0x8ce499e792da77298a2e864ddd16e555bd98724c (sidechain exporer soon...)<br>
Screenshots and videos will be published later, as well as information on the successful exchange of real cryptocurrency.<br><br>
Direct exchange log:<br>
09:39:25: Alice places order: 0.255578BTC to  5.500ETH with pledge:4833.040LIME	dex:19501:5<br>
09:39:28: Alice places order: 0.255578BTC to  5.500ETH with pledge:4833.040LIME	dex:19501:5<br>
09:39:30: Alice places order: 0.255578BTC to  5.500ETH with pledge:4833.040LIME	dex:19501:5<br>
09:39:32: Bob accepts order: 0.256BTC to  5.500ETH with pledge:4833.040LIME	dex:19501:5<br>
09:39:32: Smart contract DEx: startDEx in progress	dex:19501:5<br>
09:39:32: Smart contract DEx: form and send startDEx Tx	dex:19501:5<br>
09:39:37: Smart contract DEx: startDEx Tx is successful	dex:19501:5<br>
order=39 
from 0xfa65587c49c771eb32901d5fd2899ab7154949f0 
to 0xe050b09273bcf676ef76c9354eb1a2dcbc925f4d 
via: 0x8ce499e792da77298a2e864ddd16e555bd98724c eth: 5.5 btc: 0.255578 pledge (L): 4833.04	dex:19724:17<br>
09:39:37: Alice makes pledge Tx in Limes	dex:19501:5<br>
09:39:37: Plasmoid sends Alice's Tx to Limex	dex:19501:5<br>
09:39:49: Transfer LIMEs Tx is successful	dex:19501:5<br>
09:39:49: Bob makes pledge Tx in Limes	dex:19501:5<br>
09:39:49: Plasmoid sends Bob's Tx to Limex	dex:19501:5<br>
09:39:55: Transfer LIMEs Tx is successful	dex:19501:5<br>
09:39:55: Smart contract DEx: inDepo in progress	dex:19501:5<br>
09:39:55: Smart contract DEx: form and send inDepo Tx, orderID= 39	dex:19501:5<br>
09:40:00: Smart contract DEx: inDepo Tx is successful	dex:19501:5<br>
09:40:00: Alice & Bob make two atomic swap Tx	dex:19501:5<br>
09:40:00: Alice send 0.255578BTC to Bob Tx to Bitcoin	dex:19501:5<br>
09:40:00: Bob send 5.500ETH Tx to Ethereum	dex:19501:5<br>
09:40:03: ETH Tx is success. Checking Ethereum confirmation	dex:19501:5<br>
ETH Tx hash: 0x439aa68f98176117a4eed616b19020bed9254d2b63528d7f3451e280e1abdea0	dex:19889:17<br>
a47a5dfda19eddd093b703513c6d5019e20c19596a7d9d237cf647b9e5956c15	dex:19905:13<br>
09:40:05: BTC Tx is successful. Checking Bitcoin confirmation	dex:19501:5<br>
BTC Tx hash: a47a5dfda19eddd093b703513c6d5019e20c19596a7d9d237cf647b9e5956c15	dex:19868:13<br>
09:40:25: ETH Tx is confirmed in block 1441083	dex:19501:5<br>
09:40:25: Atomic swap BTC/ETH in progress, waiting for BTC Tx confirmation	dex:19501:5<br>
09:45:08: BTC Tx is confirmed in block 1255357	dex:19501:5<br>
09:45:08: Atomic swap is finished. Plasmoid makes Tx to cancel pledges	dex:19501:5<br>
09:45:08: Plasmoid sends 4833.040 LIMEs to Alice	dex:19501:5<br>
09:45:19: Transfer LIMEs Tx is successful	dex:19501:5<br>
09:45:19: Plasmoid makes Tx to cancel Bobs pledge	dex:19501:5<br>
09:45:19: Plasmoid sends 4833.040 LIMEs to Bob	dex:19501:5<br>
09:45:25: Transfer LIMEs Tx is successful	dex:19501:5<br>
09:45:25: Smart contract DEx: outDepo in progress	dex:19501:5<br>
09:45:25: Smart contract DEx: form and send OutDepo Tx	dex:19501:5<br>
09:45:29: Smart contract DEx: OutDepo Tx is successful	dex:19501:5<br>
09:45:29: Atomic swap BTC/ETH finished successfully!	dex:19501:5<br>
