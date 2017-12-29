/*

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
 * @title BasicTeleport
 * @author Oleg Tomin - <ot@limex.io>
 * @dev Basic implementaion of Limex protocol, crosschain token teleport functions
 * @dev See https://github.com/IamLimex/limex/protocol
 */

contract BasicTeleport {
    
  uint256 public totalTokensTeleported;
  uint8 public totalPortalsOpenNow;
  function openPortal(address sender, uint256 value) public returns (uint8);
  function closeOldPortals(address sender, uint256 value) internal returns (uint8);
  function checkPortalStatus(address sender, uint256 value) public view returns (uint8);
  event PortalOpen(uint8 indexed _portID, address indexed sender, address indexed plasmoid, uint256 value);
  event PortalClose(uint8 indexed _portID, address indexed sender, address indexed plasmoid, uint256 value);
}

/**
 * @title BasicPlasmaReg
 * @author Oleg Tomin - <ot@limex.io>
 * @dev Basic smart contract Plasmoid (crosschain relay) functions
 * @dev See https://github.com/IamLimex/limex/plasmoid
 */

contract BasicPlasmaReg {
    
  uint8 public totalPlasmoids;
  function createPlasmoid(uint256 value) public returns (uint8);
  function killPlasmoid(address sender) internal returns (uint256);
  function getPlasmoidStatus(address sender) public view returns (bytes32);
  function setPlasmoidStatus(address sender, bytes32 status) public returns (bool);
  function choosePlasmoid(address sender, uint256 value) internal returns (uint8);
  event NewPlasmoid(uint8 indexed _plasmaID, address indexed sender, address indexed plasmoid, uint256 value);
  event KillPlasmoid(uint8 indexed _plasmaID, address indexed sender, address indexed plasmoid, uint256 value);
  event ChoosePlasmoid(uint8 indexed _plasmaID, address indexed sender, address indexed plasmoid, uint256 value);
}

/**
 * @title BasicArbitrage
 * @author Oleg Tomin - <ot@limex.io>
 * @dev Basic smart contract arbitrage functions
 * @dev See https://github.com/IamLimex/limex/DEx
 */

contract BasicArbitrage {
    
  function createProcess(address sender, uint8 id, uint256 value) public returns (uint8);
  function setArbitr(address sender) internal returns (uint256);
  function getArguments(address sender) public view returns (bytes32);
  function setProcessStatus(address sender, bytes32 status) public returns (bool);
  function setVerdict(address sender, uint256 value) public returns (uint8);
  function killProcess(address sender) internal returns (uint256);
  event NewProcess(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
  event NewProcessStatus(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
  event KillProcess(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
  event Verdict(uint8 indexed processID, address indexed sender, address indexed plasmoid, uint256 value);
}


/**
 * @title BasicErrorHandler
 * @author Oleg Tomin - <ot@limex.io>
 * @dev Basic smart contract errors handler functions
 * @dev See https://github.com/IamLimex/limex/DEx
 */

contract BasicErrorHandler {

   // Error codes
   enum Errors {
        NO_ACTIVE_PLASMOID,                 //  All Plasmoids are shotdown
        PLASMOID_INT_ERR,                   //  Internal error of active Plasmoid 
        ACTIVATION_PERIOD_EXPIRED,          //  Activation period is expired
        CONFIRMATION_PERIOD_EXPIRED,        //  Confirmation period is expired
        NO_TOKENS_FOR_PLEDGE,               //  Insufficient balance for tokens pledge transfer
        NO_TOKENS_FOR_EXCHANGE              //  Insufficient balance for tokens exchange transfer
    }

    function handlerError(uint8 errorId, uint8 portalId) public;
    event LogError(uint8 indexed errorId, uint8 indexed portalId);
}