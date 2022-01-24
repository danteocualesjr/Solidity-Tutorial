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

// Signed integers
contract Contract {
    int8 public a = 33;
    int8 public b = -3;
    int16 public difference = a - b;
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

// Enum
contract Contract {
    enum Foods { Apple, Pizza, Bagel, Banana }

	Foods public food1 = Foods.Apple;
	Foods public food2 = Foods.Pizza;
	Foods public food3 = Foods.Bagel;
	Foods public food4 = Foods.Banana;
}