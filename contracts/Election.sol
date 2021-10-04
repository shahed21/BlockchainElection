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

    // this integer keeps track of total candidates in the blockchain app
    uint public candidatesCount;

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
}
