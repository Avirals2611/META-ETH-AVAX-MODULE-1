//SPDX-License-Identifier:MIT
pragma solidity ^0.8.26;

contract checkRequireRevertAssert{
    uint public num=23;

    function checkRequire(uint256 _x) public {
        num=2;
        require(_x <30,"Please provide numbers less than 30");
        num=50;
    }
 
    function checkRevert(uint256 _x) public{
        num=2;
        if(_x > 30){
            revert("Please provide numbers less than 30");
        }
        num=50;
    }

    function checkAssert(uint256 _x) public{
        num=2;
        assert(_x <30);
        num=50;
    }
}
