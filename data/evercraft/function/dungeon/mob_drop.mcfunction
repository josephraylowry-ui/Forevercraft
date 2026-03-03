# Dungeon Instance System — Mob Kill Drop
# 1% chance to spawn a mob crate when killing any dungeon mob
# Run as: player who killed the mob

advancement revoke @s only evercraft:dungeon/killed_mob

# 1% base chance for a mob crate
execute if predicate {"condition":"minecraft:random_chance","chance":0.01} at @s run function evercraft:mob_crates/spawn/common
