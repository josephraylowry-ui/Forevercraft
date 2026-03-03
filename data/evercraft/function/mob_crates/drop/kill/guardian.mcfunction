# Mob Crates - guardian kill (1 in 100 chance)
advancement revoke @s only evercraft:mob_crates/kill/guardian
data modify storage evercraft:mob_crates chance set value "0.03"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
