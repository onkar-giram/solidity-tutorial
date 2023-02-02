// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Enum {

    order public status; // by default the value will be PLACED because of the index zero

    enum order {
        PLACED,
        SHIPPED,
        DELIVERED,
        RETURNED
    }

    function markAsShipped() public {
        status = order.SHIPPED;
        
    }

    function markAsDelivered() public {
        status = order.DELIVERED;
    }

    function markAsReturned() public {
        status = order.RETURNED;
    }

}

contract Struct {

    productStruct public item; 

    struct productStruct {
        uint id;
        address owner;
        string name;
        uint price;
        uint256 createdAt;
        bool deleted;
    }   

    function createProduct() public {
        item = productStruct(
            1,
            0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,
            "milk",
            1 ether,
            block.timestamp,
            false
        );
    }
}