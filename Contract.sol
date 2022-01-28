// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Booleans
contract Contract {
    bool public a = true;
    bool public b = false;
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