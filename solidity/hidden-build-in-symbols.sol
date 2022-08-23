contract Vuln {
	function gasleft() returns(uint256) { return 5;}
	
	function vulnFunc() {
		gasleft(); // override build-in symbol gasleft
		keccak256("gg"); // not override
	}
}
