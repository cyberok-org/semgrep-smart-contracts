contract Vuln {
    function notVulnFunc() isBridge {
        msg.sender.call.value(5 ether)("");
    }
    function notVulnFunc2(address a) onlyOwner {
        a.call.value(5 ether)("");
    }
    function vulnFunc() private {
        msg.sender.call.value(5 ether)("");
    }
    function vulnFunc2() {
        address a = msg.sender;
        a.call{value:5}("ff");
    }
    function notVulnFunc3() nonReentrant {
        msg.sender.call{value: msg.value}("");
    }
}
