/*

  Copyright 2017 Limex inc.

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

pragma solidity 0.4.18;

/// @title DEx - Decentalized exchange of ETH/BTC.
/// @author Oleg Tomin - <ot@limex.io>

/// Simple test for ETH/BTC crossshain direct exchange
contract DEx {

    string constant public VERSION = "0.1";
    uint16 constant public LIME_RATIO = 300;    // Exchange ratio ETH/LIME     

    uint public ORDER = 0;  // Order number.

    event StartDEx(
        uint _order,
        address indexed maker,
        address taker,
        address indexed plasmoid,
        uint ethAmount,
        uint btcAmount,
        uint pledgeLIMEAmount,
        uint fee
    );

    event StopDEx(
        uint _order,
        address indexed maker,
        address taker,
        address indexed plasmoid,
        uint ethAmount,
        uint btcAmount,
        uint fee
    );

    event InDepo(uint _order);

    event OutDepo(uint _order);

    /*
    * Start exchange function - Bob's call
    */

    function openDEx(address _alice, address _plasmoid, uint _ethAmount, uint _btcAmount, uint _fee) public {
        uint limeAmount;
        ORDER = ORDER + 1;
        limeAmount = _ethAmount * LIME_RATIO;
        StartDEx(ORDER, _alice, msg.sender, _plasmoid, _ethAmount, _btcAmount, limeAmount, _fee);
    }

    /*
    * Pledge functions - Plasmoid's call
    */

    function inDepo(uint _order) public {
        InDepo(_order);
    }

    function outDepo(uint _order) public {
        OutDepo(_order);
    }

    /*
    * Stop exchange function - Plasmoid's call
    */

    function closeDEx(uint _order, address _alice, address _plasmoid, uint _ethAmount, uint _btcAmount, uint _fee) public {
        StopDEx(_order, _alice, msg.sender, _plasmoid, _ethAmount, _btcAmount, _fee);
    }

}