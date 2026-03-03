clear @s gray_dye[max_stack_size=1]

execute unless entity @s[tag=Pets.ActivePet] run tellraw @s {text:"You do not have an active pet to convert to an item!", color:"red"}
execute unless entity @s[tag=Pets.ActivePet] run return run function evercraft:companions/handler/menu/despawn


function evercraft:companions/handler/menu/despawn

scoreboard players operation #Search Pets.ID = @s Pets.ID
data modify storage evercraft:companions name set from entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[1].value

function evercraft:companions/handler/database/remove_pet with storage evercraft:companions

function evercraft:companions/handler/active_pet/convert