pragma solidity ^0.4.2;

contract Election {
	//Store value
	//Read candidate
	//Constructor
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	mapping(uint => Candidate) public candidates;
	//candidates works like a simple function here, that looks up key value pairs 
	uint public candidatesCount;

	string public candidate;

	function Election() public {
		addCandidate("Candidate1");
		addCandidate("Candidate2");
	}

	function addCandidate (string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}





}
