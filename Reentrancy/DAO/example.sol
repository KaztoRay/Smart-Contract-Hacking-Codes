// The DAO contract itself
// SPDX-License-Identifier: MIT

contract DAO is DAOinterface, Token, TokenCreation {

    ...

    function splitDAO(

        uint _proposalID, 
        address _newCurator

    ) noEther onlyTokenholders returns (bool _success) {

        ...

        // Move ether adn assign new Tokens
        uint fundsToBeMoved = (balances[msg.sender] * p.splitData[0].splitBalance) / p.splitData[0].totalSupply;

        if (p.splitData[0].newDAO.createDAO.createTokenProxy.value(fundsToBeMoved)(msg.sender) == false)

            throw;

        ...

        // BUrn DAO Tokens
        Transfer(msg.sender, 0, balances[msg.sender]);

        withdrawRewardsFor(msg.sender); // be nice, and get his rewards

        totalSupply -= balances[msg.sender];

        balances[msg.sender] = 0;
        paidOut[msg.sender] = 0;

        return true;

    }

}