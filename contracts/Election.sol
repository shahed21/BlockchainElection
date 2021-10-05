pragma solidity >=0.4.22 <0.8.0;

contract Election {
    // Candidate struct
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // hash map to hold the candidates
    mapping (uint => Candidate) public candidates;
    // hashmap to store voter accounts
    mapping (address => bool) public voters;

    // this integer keeps track of total candidates in the blockchain app
    uint public candidatesCount;

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public {
        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
    }

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
}
