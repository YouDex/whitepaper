/**

  Copyright 2017-2018 Limex inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity ^0.4.18;

  /**
  * @title Arbitrage
  * @author Oleg Tomin - <ot@limex.io>
  * @dev Arbitrge functions
  * @dev See https://github.com/IamLimex/limex/plasmoid
  */

contract Arbitrage is BasicArbitrage {

  uint8 public PORTAL_ID = 0;  // Serial portal number  
  uint8 public constant NEW_PLASMOID = 1;
  uint8 public constant GOOD_PLASMOID = 100;
  uint8 public constant NICE_PLASMOID = 1000;
  uint8 public constant LOCK_PLASMOID = 100000;
 // uint8 public totalPlasmoids;

   struct Plasma {
        uint8 id;
        uint256 pledgeTokenAmount;
        uint8 minFee;
        uint8 status;
    }

mapping (address => Plasma) public plasmoid;

  /**
   * @dev Create new plasmoid (registration procedure) by sender
   * @param _value uint256 The amount of tokens to be pledged
   * @param _fee uint16 The minimum size of plasmoid's fee
   */

 function createProcess(address sender, uint8 id, uint256 value) public returns (uint8);
    require(msg.sender != address(0));
    require(value <= balances[msg.sender]);
    requre(plasmoid[msg.sender].status == 0);      //  Unique new plasmoid 
    totalPlasmoids = totalPlasmoids + 1;
    plasmoid[msg.sender] = Plasma({
        id: totalPlasmoids,
        pledgeTokenAmount: value,
        minFee: fee,
        status: NEW_PLASMOID
        });
    NewPlasmoid(plasmoids, msg.sender, value);
    return totalPlasmoids;
  }

  /**
   * @dev Kill plasmoid (unregistration procedure) by sender or 
   * @param _value uint256 The amount of tokens to be pledged
   * @param _fee uint16 The minimum size of plasmoid's fee
   */

  function killProcess(address sender) internal returns (uint256) {
    require(msg.sender == sender || msg.sender == address(0)); 
    require(sender != address(0));
    requre(plasmoid[msg.sender].status < LOCK_PLASMOID);      //  Plasmoid is free
    uint8 idPlasma = plasmoid[msg.sender].id;
    totalPlasmoids = totalPlasmoids - 1;
    plasmoid[msg.sender] = Plasma({
        id: 0,
        pledgeTokenAmount: 0,
        minFee: 0,
        status: 0
        });
        // Send his maney to him...
    KillPlasmoid(idPlasma, sender);
    return totalPlasmoids;
  }

  function setProcessStatus(address sender, bytes32 status) public returns (bool) {
    require(msg.sender != address(0) && msg.sender != relay);
    plasmoid[msg.sender].status = _status;
  }

  function setArbitr(address sender) internal returns (uint256);
  function getArguments(address sender) public view returns (bytes32);
  function setVerdict(address sender, uint256 value) public returns (uint8);
  event NewProcess(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
  event NewProcessStatus(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
  event KillProcess(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
  event Verdict(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
}
