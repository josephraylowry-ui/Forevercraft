# Runeforge — Check if forging is complete (run as RF.Marker in state 2)

# Get current gametime
execute store result score #rf_now rf.timer run time query gametime

# Get forge_started_at from this marker
execute store result score #rf_started rf.timer run data get entity @s data.forge_started_at

# elapsed = now - started
scoreboard players operation #rf_elapsed rf.timer = #rf_now rf.timer
scoreboard players operation #rf_elapsed rf.timer -= #rf_started rf.timer

# If elapsed >= 216000 (3 in-game days), transition to state 3
execute if score #rf_elapsed rf.timer matches 216000.. run data modify entity @s data.rf_state set value 3
execute if score #rf_elapsed rf.timer matches 216000.. at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.3 0.3 0.3 0.1 30
execute if score #rf_elapsed rf.timer matches 216000.. at @s run playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.5 1.2
