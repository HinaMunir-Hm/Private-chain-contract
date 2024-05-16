// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Insurance {
    struct Client {
        uint256 age;
        string name;
        string ipfs;
        string date;
    }

    mapping(address => Client) public clients;

    function setClient(
        address address_,
        uint256 age_,
        string memory _name,
        string memory _ipfs,//stored the information that updates ocassionally
        string memory _date
    ) public {
        Client storage c = clients[address_];
        c.age = age_;
        c.name = _name;
        c.ipfs = _ipfs;
        c.date = _date;
    }

    function updateIPfs(
        address address_,        
        string memory _ipfs
    ) public {
        // Client storage c = clients[address_];
        // c.age = age_;
        // c.name = _name;
        // c.ipfs = _ipfs;
        // c.date = _date;
        Client storage c= clients[address_];
        c.ipfs=_ipfs;
    }

    function getClients(address address_)
        external
        view
        returns (Client memory)
    {
        return clients[address_];
    }
}
