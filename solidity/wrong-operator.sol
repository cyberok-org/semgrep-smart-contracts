contract Vuln {
	// wrong operators
	function vulnFunc(uint a,uint b) {
		a=+b;
		a=-b;
	}
}
