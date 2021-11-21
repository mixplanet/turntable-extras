pragma solidity ^0.5.6;

import "./interfaces/ITurntableExtras.sol";
import "./interfaces/ITurntables.sol";

contract TurntableExtras is ITurntableExtras {

    ITurntables public turntables;

    constructor(ITurntables _turntables) public {
        turntables = _turntables;
    }
    
    mapping(uint256 => string) public extras;

    function set(uint256 turntableId, string calldata extra) external {
        (address owner,,,) = turntables.turntables(turntableId);
        require(owner == msg.sender);
        extras[turntableId] = extra;
        emit Set(turntableId, msg.sender, extra);
    }
}
