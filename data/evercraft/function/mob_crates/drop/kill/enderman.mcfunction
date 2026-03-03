# Mob Crates - enderman kill (1 in 50 chance)
advancement revoke @s only evercraft:mob_crates/kill/enderman
data modify storage evercraft:mob_crates chance set value "0.06"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
