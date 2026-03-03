clear @s purple_dye[max_stack_size=1]

execute if entity @s[tag=Pets.ActivePet] run return run function evercraft:companions/handler/active_pet/despawn

tellraw @s {text:"You do not have an active pet to despawn!", color:"red"}
function evercraft:companions/handler/menu/despawn