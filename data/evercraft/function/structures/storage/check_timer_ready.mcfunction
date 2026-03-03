# Check if this refresh marker belongs to the checking player, show as ready
# Run as the refresh marker entity

# Extract marker's stored UUID
execute store result score #marker_uuid0 cf.temp run data get entity @s data.player_uuid[0]
execute store result score #marker_uuid1 cf.temp run data get entity @s data.player_uuid[1]
execute store result score #marker_uuid2 cf.temp run data get entity @s data.player_uuid[2]
execute store result score #marker_uuid3 cf.temp run data get entity @s data.player_uuid[3]

# Compare with player — sets #timer_match to 1 if UUIDs match
scoreboard players set #timer_match cf.temp 0
execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/compare_timer_uuid

# If no match, skip
execute unless score #timer_match cf.temp matches 1 run return 0

# Match found! Increment counter
scoreboard players add #timer_count cf.temp 1

# Read struct_id and position from this marker
execute store result score #timer_struct cf.temp run data get entity @s data.struct_id
execute store result score #timer_x cf.temp run data get entity @s Pos[0]
execute store result score #timer_y cf.temp run data get entity @s Pos[1]
execute store result score #timer_z cf.temp run data get entity @s Pos[2]

# Show the "Ready" line as the player
execute as @a[tag=cf.checking_player,limit=1] run function evercraft:structures/storage/show_timer_ready
