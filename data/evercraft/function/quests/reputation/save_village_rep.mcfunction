# ============================================================
# Save Village Reputation
# Saves the player's reputation scoreboards to village-specific storage
# Execute as the player, requires ec.current_village to be set
# ============================================================

# If not in a village, skip
execute unless score @s ec.current_village matches 1.. run return fail

# Store village ID in temp storage for macro
execute store result storage eden:temp rep.vid int 1 run scoreboard players get @s ec.current_village

# Get player UUID as string key (UUID[0] is unique enough for our purposes)
execute store result storage eden:temp rep.uuid int 1 run data get entity @s UUID[0]

# Store current reputation values in temp
execute store result storage eden:temp rep.save.rep int 1 run scoreboard players get @s ec.village_rep
execute store result storage eden:temp rep.save.rank int 1 run scoreboard players get @s ec.rep_rank

# Save reputation data to storage using macro
function evercraft:quests/reputation/save_village_rep_macro with storage eden:temp rep

# Check if rep dropped below 0 (exile trigger)
function evercraft:village/exile/check_rep
