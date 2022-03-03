pragma solidity 0.8.12;

// SPDX-License-Identifier: apache 2.0
/*
    Copyright 2020 Sigmoid Foundation <info@SGM.finance>
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

interface IPairContract {
	function updateRatioFactor(address token0, address token1, uint256 amount0, uint256 amount1) external returns(uint256 ratio01, uint256 ratio10);
	function updatePrice(address token0, address token1) external returns(uint256 price0, uint256 price1);
    function mint(address to) external returns(uint256 boundToken1, uint256 boundToken2);
    function amountOfDebondToMint(uint256 _dbitIn) external returns(uint256 amountDBIT);
}