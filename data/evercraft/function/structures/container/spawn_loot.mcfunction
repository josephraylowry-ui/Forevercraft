# Spawn a temporary loot container for the player
# Tier is in cf.tier scoreboard, position stored in cf.pos_x/y/z
# Run as player

# Check if already looted using marker approach
# Summon temp marker at chest position to check for existing looted markers
tag @s add cf.checking_player

# Create temp marker at the chest position to use for distance-based checking
summon marker ~ ~ ~ {Tags:["cf.check_pos"]}
execute store result entity @e[type=marker,tag=cf.check_pos,limit=1] Pos[0] double 1 run scoreboard players get @s cf.pos_x
execute store result entity @e[type=marker,tag=cf.check_pos,limit=1] Pos[1] double 1 run scoreboard players get @s cf.pos_y
execute store result entity @e[type=marker,tag=cf.check_pos,limit=1] Pos[2] double 1 run scoreboard players get @s cf.pos_z

# From that position, check for looted markers belonging to this player
execute at @e[type=marker,tag=cf.check_pos,limit=1] as @e[type=marker,tag=cf.looted_marker,distance=..1] run function evercraft:structures/storage/check_marker

# Also clean up any expired refresh markers at this position (vault re-loot cleanup)
# Uses check_refresh_marker to UUID-match, then kills consumed markers + removes from storage
execute at @e[type=marker,tag=cf.check_pos,limit=1] if entity @e[type=marker,tag=cf.refresh_marker,distance=..1] run function evercraft:structures/storage/check_refresh_cleanup

# Clean up check marker
kill @e[type=marker,tag=cf.check_pos]
tag @s remove cf.checking_player

# If spawn flag is still 1, no matching marker found - spawn loot
# NOTE: mark_looted is now called at END of spawn_loot_here to ensure
# we only mark as looted AFTER successful loot spawn (not if dream gated)
scoreboard players set #cf_is_refresh cf.temp 0
execute if score #spawn_loot cf.temp matches 1 run function evercraft:structures/container/create_container

# If already looted (spawn_loot = 0), show the player the remaining refresh time
execute if score #spawn_loot cf.temp matches 0 if score #looted_timer cf.temp matches 1.. run function evercraft:structures/storage/show_looted_feedback
