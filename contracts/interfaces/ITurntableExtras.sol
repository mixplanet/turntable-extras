pragma solidity ^0.5.6;

interface ITurntableExtras {
    
    event Set(uint256 indexed turntableId, address indexed owner, string extra);
    
    function set(uint256 turntableId, string calldata extra) external;
    function extras(uint256 turntableId) view external returns (string memory);
}
