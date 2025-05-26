pragma solidity 0.8.30;

contract Voting	{
	mapping (string=> uint256) public votes;
	string[] public candidateList;

	function addCandidate(string memory _name) public	{
		candidateList.push(_name);
	}

	function vote(string memory _name) public	{
		votes[_name]++;
	}

	function getVotes(string memory _name) public view returns (uint256)	{
		return votes[_name];
	}

	function getCandidates() public view returns (string[] memory)	{
		return cadidateList;
	}
}
