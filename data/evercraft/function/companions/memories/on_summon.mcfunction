# Companion Memories — First Summon Detection
# Called after a pet is summoned. If pet has 0 memories, record "First Steps Together"
# Run as: player

execute unless entity @s[tag=Pets.ActivePet] run return 0

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Check if memories property exists and has value 0 (or doesn't exist)
execute unless data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run function evercraft:companions/memories/record {bit_value:1,memory_name:"First Steps Together"}
execute store result score #t Pets.Calc run data get entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}].value
execute if data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run function evercraft:companions/memories/record {bit_value:1,memory_name:"First Steps Together"}
