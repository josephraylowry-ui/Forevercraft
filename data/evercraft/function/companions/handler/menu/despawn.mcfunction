advancement revoke @s only evercraft:companions/menu/spawn

clear @s barrier[custom_name={bold:true, color:"dark_red", italic:false, text:"Close"}]

scoreboard players operation #Search Pets.ID = @s Pets.ID
data modify entity @e[distance=..4, type=chest_minecart, tag=Pets.PetMenu, predicate=evercraft:companions/check_id, limit=1] Items set value []

kill @e[distance=..4, type=chest_minecart, tag=Pets.PetMenu, predicate=evercraft:companions/check_id]
kill @e[distance=..4, type=item_display, tag=Pets.MenuVehicle, predicate=evercraft:companions/check_id]

tag @s remove Pets.InMenu
tag @s remove Pets.InMenu2
tag @s remove Pets.ActiveMenu