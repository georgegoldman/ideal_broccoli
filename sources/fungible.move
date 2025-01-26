/*
/// Module: fungible
module fungible::fungible;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module fungible::fungible;

use sui::coin;

public struct FUNGIBLE has drop {}
    
fun init(witness: FUNGIBLE, ctx: &mut TxContext) {
    let icon_url = sui::url::new_unsafe(std::ascii::string(b"silver-blushing-woodpecker-143.mypinata.cloud/ipfs/Qmed2qynTAszs9SiZZpf58QeXcNcYgPnu6XzkD4oeLacU4"));
    let (treasury, metadata) = coin::create_currency(witness, 9, b"PE", b"PEPE", b"", option::some(icon_url), ctx);
    transfer::public_freeze_object(metadata);
    transfer::public_transfer(treasury, tx_context::sender(ctx))
}

public entry fun mint(
    treasury: &mut coin::TreasuryCap<FUNGIBLE>, amount: u64, recipient: address, ctx: &mut TxContext
){
    coin::mint_and_transfer(treasury, amount, recipient, ctx)
}

