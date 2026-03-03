# Mob Crates - elder_guardian kill (1 in 10 chance)
advancement revoke @s only evercraft:mob_crates/kill/elder_guardian
data modify storage evercraft:mob_crates chance set value "0.3"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
