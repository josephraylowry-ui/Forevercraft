# Runeforge — On Place (advancement reward)
advancement revoke @s only evercraft:runeforge/place_forge
scoreboard players set #rf_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^1 run function evercraft:runeforge/raycast_place
