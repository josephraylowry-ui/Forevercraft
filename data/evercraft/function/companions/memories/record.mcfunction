# Companion Memories — Record a Memory (Macro)
# Args: $(bit_value) = power of 2 for this memory, $(memory_name) = display name
# Run as: player with active pet
# Returns: 0 if duplicate or no pet, succeeds if memory was recorded

execute unless entity @s[tag=Pets.ActivePet] run return 0

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Initialize memories property if missing
execute unless data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run data modify entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties append value {name:"memories",value:"0"}

# Read current memories bitfield
data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #mem_bits Pets.Calc = #value Pets.Calc

# Check if this memory bit is already set: (bits / bit_value) % 2
$scoreboard players set #bit_val Pets.Calc $(bit_value)
scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #bit_val Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run return 0

# Set the bit
scoreboard players operation #mem_bits Pets.Calc += #bit_val Pets.Calc

# Write back to pet entity
scoreboard players operation #value Pets.Calc = #mem_bits Pets.Calc
function evercraft:companions/handler/math/int_to_string
execute as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run data modify entity @s item.components."minecraft:profile".properties[{name:"memories"}].value set from storage evercraft:companions math.string

# Announce the new memory
$tellraw @s [{text:"  "},{"text":"  ","color":"light_purple"},{"text":"Memory Forged: ","color":"gray"},{"text":"$(memory_name)","color":"light_purple","bold":true}]
tellraw @s [{text:"    ","color":"dark_gray"},{"text":"A shared memory with ","color":"dark_gray","italic":true},{"selector":"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]","color":"gold","italic":true},{"text":".","color":"dark_gray","italic":true}]
execute at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.2
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run particle end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10
