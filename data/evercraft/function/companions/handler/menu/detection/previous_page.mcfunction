tag @s remove Pets.InMenu2
clear @s arrow[max_stack_size=1]

scoreboard players operation #Search Pets.ID = @s Pets.ID
data modify entity @e[distance=..4, type=chest_minecart, tag=Pets.PetMenu, predicate=evercraft:companions/check_id, limit=1] Items set value []

function evercraft:companions/handler/menu/open