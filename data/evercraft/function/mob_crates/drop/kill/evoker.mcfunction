# Mob Crates - evoker kill (1 in 20 chance)
advancement revoke @s only evercraft:mob_crates/kill/evoker
data modify storage evercraft:mob_crates chance set value "0.15"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
