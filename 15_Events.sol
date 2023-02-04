// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Newsman {
    string[] public news;

    event Published(
        uint indexed nid,
        address indexed publisher,
        string speech,
        uint timestamp
    );

    function publishman (string calldata speech) public returns (bool){
        news.push(speech);

        emit Published(
            news.length +1,
            msg.sender,
            speech,
            block.timestamp
        );

        return true;
    }

    function getPublishedNews() public view returns (string[] memory ){
        return news;
    }
}