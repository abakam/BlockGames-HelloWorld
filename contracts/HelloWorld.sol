//SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract HelloWorld {
    string private language;
    string public constant instruction = "Set a language, and say hello world in that language.";
    string private constant prompt = "Here is hello world in ";

    constructor(string memory _language) {
        language = _language;
    }

    
    function setLanguage(string memory _language) public {
        language = _language;
    }

    function getLanguage() public view returns(string memory) {
        return language;
    }

    function sayHelloWorld(string memory _message) public view returns(string memory) {
        string memory space = ": ";
        return string(abi.encodePacked(prompt, language, space, _message));
    }
}
