# Mob Crates - piglin_brute kill (1 in 20 chance, elite)
advancement revoke @s only evercraft:mob_crates/kill/piglin_brute
data modify storage evercraft:mob_crates chance set value "0.15"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
