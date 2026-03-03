# Pet Combat — Find Target Mob
# Executed as the player, after whistle validation
# Finds nearest hostile mob within 16 blocks and initiates attack

# Tag nearest valid target
execute as @e[type=#evercraft:combat_targets,distance=..16,sort=nearest,limit=1] run tag @s add pc.target

# Check if we found a target
execute unless entity @e[tag=pc.target,limit=1] run return run tellraw @s {text:"No hostile creatures nearby.",color:"gray"}

# Read pet data for damage calculation
# Pet name (signature) for effect routing — signature field holds lowercase routing key
data modify storage evercraft:pet_combat pet_name set from entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:profile".properties[{name:"name"}].signature

# Pet level via string_to_int
data modify storage evercraft:companions math.string set string entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #pc_level ec.var = #value Pets.Calc

# Load combat data from pet entity custom_data (defaults to 0 if not set)
execute store result score #pc_cxp ec.var run data get entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_xp
execute store result score #pc_clvl ec.var run data get entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1] item.components."minecraft:custom_data".combat_level

# Relationship multiplier (already loaded per-player)
execute unless score @s Pets.RelMult matches 1.. run scoreboard players set @s Pets.RelMult 100

# Calculate and apply damage
function evercraft:companions/combat/calc_damage

# Execute the attack
function evercraft:companions/combat/attack
