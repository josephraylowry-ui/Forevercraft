# Pet Combat — Command Whistle Used
# Executed as the player who used the whistle
# Advancement reward — revoke immediately to allow re-trigger

advancement revoke @s only evercraft:companions/combat/use_whistle

# Must have an active pet
execute unless entity @s[tag=Pets.ActivePet] run return run tellraw @s {text:"You need an active companion to use the Command Whistle.",color:"red"}

# Cooldown check
execute if score @s pet.wcd matches 1.. run return run tellraw @s {text:"Your companion is not ready yet.",color:"gray"}

# Set search ID for pet entity lookup
scoreboard players operation #Search Pets.ID = @s Pets.ID

# Verify pet exists nearby (within 64 blocks)
execute unless entity @e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,distance=..64,limit=1] run return run tellraw @s {text:"Your companion is too far away.",color:"red"}

# Find a target mob
function evercraft:companions/combat/find_target
