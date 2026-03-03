# Mob Crates - skeleton kill (1 in 200 chance)
advancement revoke @s only evercraft:mob_crates/kill/skeleton
data modify storage evercraft:mob_crates chance set value "0.015"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
