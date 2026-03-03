# ============================================================
# Check Current Village
# Updates player's current village based on proximity
# Loads per-village reputation when entering a new village
# ============================================================

# Store previous village to detect changes
scoreboard players operation #prev_village quests.temp = @s ec.current_village

# Check if player is within 80 blocks of a village marker (single entity scan)
# store result returns 0 if no entity found, or the village_id if found
execute store result score @s ec.current_village run scoreboard players get @e[type=armor_stand,tag=mob_manager.village.name,distance=..80,limit=1,sort=nearest] ec.village_id

# If village changed, load the new village's reputation
execute unless score @s ec.current_village = #prev_village quests.temp run function evercraft:quests/reputation/load_village_rep

# If village changed and now in a village, check exile and show specialization
execute unless score @s ec.current_village = #prev_village quests.temp if score @s ec.current_village matches 1.. run function evercraft:village/exile/check_lockout
execute unless score @s ec.current_village = #prev_village quests.temp if score @s ec.current_village matches 1.. run function evercraft:village/specialization/on_enter
