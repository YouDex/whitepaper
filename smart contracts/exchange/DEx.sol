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

/*
* @title DEx - Decentalized exchange of ETH/BTC by Limex protocol.
* @author Oleg Tomin - <ot@limex.io>
* @dev Simple test for ETH/BTC crossshain direct exchange
*/

contract DEx {

    string constant public VERSION = "0.2";     // 09.12.2017

    uint public ORDER = 0;  // Serial order number

    event StartDEx(         // Record a log of all exchanges
        uint indexed _order,
        address indexed maker,
        address taker,
        address plasmoid,
        uint ethAmount,
        uint btcAmount,
        uint pledgeLIMEAmount
    );

    event StopDEx(          //  Record a log of successful exchanges
        uint indexed _order,
        address maker,
        address taker,
        address plasmoid,
        uint ethAmount,
        uint btcAmount,
        uint pledgeLIMEAmount
    );

    event InDepo(uint indexed _order);  //  Record a log of successful placements of pledges

    event OutDepo(uint indexed _order, address indexed _dealer); //  Record a log of successful cancellations of pledges

    /*
    * Start exchange function - Bob's call
    */

    function openDEx(address _maker, address _plasmoid, uint _ethAmount, uint _btcAmount, uint _limeAmount) public {
        ORDER = ORDER + 1;
        StartDEx(ORDER, _maker, msg.sender, _plasmoid, _ethAmount, _btcAmount, _limeAmount);
    }

    /*
    * Work with pledges functions - Plasmoid's call
    */

    function inDepo(uint _order) public {
        InDepo(_order);
    }

    function outDepo(uint _order, address _dealer) public {
        OutDepo(_order, _dealer);
    }

    /*
    * Stop exchange function - Plasmoid's call
    */

    function closeDEx(uint _order, address _maker, address _taker, uint _ethAmount, uint _btcAmount, uint _limeAmount) public {
        StopDEx(_order, _maker, _taker, msg.sender, _ethAmount, _btcAmount, _limeAmount);
    }

}