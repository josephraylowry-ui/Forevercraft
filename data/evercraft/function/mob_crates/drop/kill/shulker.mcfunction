# Mob Crates - shulker kill (1 in 30 chance)
advancement revoke @s only evercraft:mob_crates/kill/shulker
data modify storage evercraft:mob_crates chance set value "0.0999"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
