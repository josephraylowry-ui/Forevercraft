# Mob Crates - zombie kill (1 in 250 chance)
advancement revoke @s only evercraft:mob_crates/kill/zombie
data modify storage evercraft:mob_crates chance set value "0.012"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
