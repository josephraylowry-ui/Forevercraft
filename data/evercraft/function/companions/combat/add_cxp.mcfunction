# Pet Combat — Add Combat XP to Active Pet
# Input: #pc_cxp_gain ec.var = amount to add
# Reads/writes combat data on the pet entity

# Load current CXP from pet
execute store result score #pc_cxp ec.var run data get entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_xp
execute store result score #pc_clvl ec.var run data get entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_level

# Cap at combat level 100
execute if score #pc_clvl ec.var matches 100.. run return 0

# Add XP
scoreboard players operation #pc_cxp ec.var += #pc_cxp_gain ec.var

# Check for level up
function evercraft:companions/combat/check_levelup

# Save back to pet entity
function evercraft:companions/combat/save_combat_data
