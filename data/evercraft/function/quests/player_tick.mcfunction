# Quest System — Per-player tick (runs as @s = player, at @s)
# OPT: Consolidates 4 @a scans into 1 function call

# Track active quest progress
function evercraft:quests/active/track_progress

# Party quest sharing: nearby party members share kill quest progress
function evercraft:party/quest/broadcast

# Apply reputation benefits
function evercraft:quests/reputation/apply_benefits

# Update current village for each player
# OPT: Only check when player has moved — village markers don't move (skips entity scan when stationary)
execute if score @s ec.moving matches 1.. run function evercraft:quests/reputation/check_village
