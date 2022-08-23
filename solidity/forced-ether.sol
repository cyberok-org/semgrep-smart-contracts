contract Vuln {
	function getAnswer() external payable returns(uint256){
        //In Ethereum, you can forced ethers to be sent to an address by self-destructing contracts or mining. Even if that address doesn't want to receive **ethers**, don't make the features of the contract dependent on the contract's balance being at a fixed value (==), where an attacker can affect the features of the contract by sending a little bit of ethers.
        require(address(this).balance % 1 ether == 0); 
        require(msg.value > 0);
        return answer;
    	}
	function vulnFunc2(uint256 a) {
		bool c1 = address(this).balance >= 8;
		bool c2 = address(this).balance >> 2 == 4;
		require(c1 && c2);
		msg.sender.transfer(msg.value);
	}
}
