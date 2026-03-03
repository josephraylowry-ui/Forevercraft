# World Boss — Spawn Reward Crate
# Called as the killing player — spawns at player location
# Base: Ornate tier, rolls up with Dream Rate (same thresholds as mob crates)

execute store result score #wb_temp ec.var run attribute @s luck get 10

# Mythical: DR >= 50.0 (500)
execute if score #wb_temp ec.var matches 500.. at @s run function evercraft:mob_crates/spawn/mythical
# Exquisite: DR >= 40.0 (400)
execute unless score #wb_temp ec.var matches 500.. if score #wb_temp ec.var matches 400.. at @s run function evercraft:mob_crates/spawn/exquisite
# Ornate: DR >= 30.0 (300)
execute unless score #wb_temp ec.var matches 400.. if score #wb_temp ec.var matches 300.. at @s run function evercraft:mob_crates/spawn/ornate
# Rare: default (below DR 30)
execute unless score #wb_temp ec.var matches 300.. at @s run function evercraft:mob_crates/spawn/rare
