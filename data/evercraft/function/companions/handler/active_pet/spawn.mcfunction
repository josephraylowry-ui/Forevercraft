execute in overworld run item replace block 0 -63 0 container.0 from entity @s player.cursor

scoreboard players operation #Search Pets.ID = @s Pets.ID
execute if entity @s[tag=Pets.ActivePet] run kill @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id]

# Clear any lingering level data from previous pet to prevent level transfer
scoreboard players reset #current_level Pets.EXP
scoreboard players reset #current_exp Pets.EXP
scoreboard players reset #exp_to_next_level Pets.EXP

tag @s add Pets.ActivePet
tag @s add Pets.Owner

function evercraft:companions/handler/active_pet/summon
clear @s enchanted_book[custom_data={petMenu:true, pet:1b}]
function evercraft:companions/handler/menu/despawn

tag @s remove Pets.Owner