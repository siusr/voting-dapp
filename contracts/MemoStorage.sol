pragma solidity 0.8.30;

contract MemoStorage	{
	mapping(address => string) public memos;

	function setMemo(string memory _memo) public	{
		memos[msg.sender] = _memo;
	}

	function getMemo(address _user) public view returns (string memory)	{
		return memos[_user];
	}
}
