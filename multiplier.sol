pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract Multy {
    uint public multiply = 1;

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }
    function multiplier(uint value) public {
            require(value > 0 && value <= 10, 103);
            multiply *= value;
            tvm.accept();
    }
}