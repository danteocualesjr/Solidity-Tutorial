// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Booleans
contract Contract {
    bool public a = true;
    bool public b = false;
}

//
contract Contract {
    bool public c = true;
    bool public d = false;
}

//
contract Contract {
    bool public e = true;
    bool public f = false;
}

//
contract Contract {
    bool public g = true;
    bool public h = false;
}

// Unsigned integers
contract Contract {
    uint8 public a = 3;
    uint16 public b = 256;
    uint256 public sum = a + b;    
}

// 
contract Contract {
    uint8 public c = 4;
    uint16 public d = 257;
    uint256 public sum = c + d;
}

// 
contract Contract {
    uint8 public e = 5;
    uint16 public f = 258;
    uint256 public sum = e + f;
}

// 
contract Contract {
    uint8 public g = 6;
    uint16 public h = 259;
    uint256 public sum = g + h;
}

// Signed integers
contract Contract {
    int8 public a = 33;
    int8 public b = -3;
    int16 public difference = a - b;
}

//
contract Contract {
    int8 public c = 333;
    int8 public d = 33;
    int16 public difference = c - d;
}

// Bytes
contract Contract {
    bytes2 public a = 0xaabb;
    bytes2 public b = 0xbbcc;
    bytes2 public cafe = 0xcafe;

}

// String literals
contract Contract {
	bytes32 public msg1 = "Hello World";
    string public msg2 = "Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
}

//
contract Contract {
    bytes32 public msg3 = "Hello World";
    string public msg4 = "gmgmgmgmgmgmgmgmgmgmgmgmgmgmgmgmg";
}

//
contract Contract {
    bytes32 public msg5 = "Hello World";
    string public msg6 = "gngngngngngngngngngngngngngngngngngn";
}

// Enum
contract Contract {
    enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;
}

//
contract Contract {
    enum Books { Persuasion, Emma, Mansfield }

	Books public book1 = Books.Persuasion;
	Books public book2 = Books.Emma;
	Books public book3 = Books.Mansfield;
}

// Arguments
contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }
}

//
contract Contract {
    uint public y;

    constructor(uint _y) {
        y = _y;
    }
}

//
contract Contract {
    uint public z;

    constructor(uint _z) {
        z = _z;
    }
}

// Increment
contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x += 1;
    }
}

// Decrement
contract Contract {
    uint public z;

    constructor(uint _z) {
        z = _z;
    }

    function decrement() external {
        z -= 1;
    }
}

// View addition
contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x += 1;
    }

    function add(uint y) external view returns(uint) {
        return x + y;
    }
}

// Pure double
contract Contract {
    function double(uint x) external pure returns(uint product) {
        product = x * 2;
    }
}

// Uint library
library UIntFunctions {
    function isEven(uint x) public pure returns(bool)  {
        return x % 2 == 0;
    }    
}

// Using libraries
contract Game {
    using UIntFunctions for uint;
    uint public participants;
    bool public allowTeams;

    constructor(uint _participants) {
        if(_participants.isEven()) {
            allowTeams = true;
        }

        participants = _participants;

    }
}

// Console.log
import "hardhat/console.sol";

contract Contract {
	function getSecret(string memory) public view returns(uint) {
		// TODO: find the secret number??and return it! 
		return 1337;
	}
}

// Evenly divides
library Prime {
    function dividesEvenly(uint x, uint y) public pure returns(bool) {
        return (x % y == 0);
    }    
}

// Is prime
library Prime {
    function dividesEvenly(uint x, uint y) public pure returns(bool) {
        return (x % y == 0);
    }
    function isPrime(uint x) public pure returns(bool) {
        for(uint i = 2; i <= x / 2; i++) {
            if(dividesEvenly(x, i)) {
                return false;
            }
        }
        return true;
    }    
}

// Next prime
import "./Prime.sol";

contract PrimeGame {
    using Prime for uint;

    function isWinner() public view returns(bool)  {
        return block.number.isPrime();
    }    
}

// Storing owner
contract Contract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}

// Address payable
contract Contract {
    address payable public owner;

    constructor() public {
        owner = payable(msg.sender);
    }
}

// Receive Ether
contract Contract {
    address payable public owner;

    constructor() public {
        owner = payable(msg.sender);
    }

    receive() external payable {

    }
}

// Tip owner
contract Contract {
	address payable public owner;

	constructor() {
		owner = payable(msg.sender);
	}

	receive() external payable { }

	function tip() public payable {
		// forwards all remaining gas along 
		(bool success, ) = owner.call{ value: msg.value }("");
		console.log(success);
	}
}

// Charity
contract Contract {
	address payable public owner;
	address payable public charity;

	constructor(address payable _charity) {
		owner = payable(msg.sender);
		charity = _charity;
	}

	receive() external payable { }

	function donate() public {
		charity.transfer(address(this).balance);
	}

	function tip() public payable {
		owner.transfer(msg.value);
	}
}

// Self-destruct
contract Contract {
	address payable public owner;
	address payable public charity;

	constructor(address payable _charity) {
		owner = payable(msg.sender);
		charity = _charity;
	}

	receive() external payable { }

	function donate() public {
		selfdestruct(charity);
	}

	function tip() public payable {
		owner.transfer(msg.value);
	}
}