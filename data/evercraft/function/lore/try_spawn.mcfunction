# Lore Discovery: Attempt to spawn a sparkle near the player
# Run as player, at player position

# Cap: max 3 active sparkles within 150 blocks
execute store result score #lore_count ec.temp if entity @e[type=marker,tag=ec.lore_sparkle,distance=..150]
execute if score #lore_count ec.temp matches 3.. run return run function evercraft:lore/reset_timer

# Summon temp marker at player position
summon marker ~ ~ ~ {Tags:["ec.lore_temp"]}

# Spread to random ground position within 100 blocks
# Nether: cap at Y=128 to avoid bedrock roof placement
execute if predicate evercraft:in_nether store success score #lore_spread ec.temp run spreadplayers ~ ~ 10 100 under 128 false @e[type=marker,tag=ec.lore_temp,limit=1]
execute unless predicate evercraft:in_nether store success score #lore_spread ec.temp run spreadplayers ~ ~ 10 100 false @e[type=marker,tag=ec.lore_temp,limit=1]

# If spread failed (no valid position), clean up and skip
execute if score #lore_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.lore_temp]
execute if score #lore_spread ec.temp matches 0 run return run function evercraft:lore/reset_timer

# Place sparkle at the spread position
execute at @e[type=marker,tag=ec.lore_temp,limit=1] run function evercraft:lore/place_sparkle

# Clean up temp marker
kill @e[type=marker,tag=ec.lore_temp]

# Reset timer
function evercraft:lore/reset_timer
