pragma solidity >=0.4.22 <0.8.0;

contract Election {
    //state variable
    //declaring a state variable public creates its own getter function candidate()
    string public candidate;
    constructor() public {
        candidate = "Candidate 1";
    }
}
