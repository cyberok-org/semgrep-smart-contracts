contract Vuln {
	bytes32 private idHash;
	address owner; 
	constructor() {
		idHash = keccak256(abi.encodePacked(msg.sender));
		owner = msg.sender;
	}
	function vulnFunc(address id,uint8 v,bytes32 r,bytes32 s) public {
		address from = ecrecover(idHash,v,r,s);	
		require(from == id); // vuln here
		id.transfer(address(this).balance);
	}
}
