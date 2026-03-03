# Mob Crates - cow kill (1 in 500 chance)
advancement revoke @s only evercraft:mob_crates/kill/cow
data modify storage evercraft:mob_crates chance set value "0.006"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates
