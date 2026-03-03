data modify entity @s Items set from storage evercraft:companions MenuPage1

data modify entity @s Items append from storage evercraft:companions constants.menu[0]
data modify entity @s Items append from storage evercraft:companions constants.menu[1]
data modify entity @s Items append from storage evercraft:companions constants.menu[2]
data modify entity @s Items append from storage evercraft:companions constants.menu[3]
data modify entity @s Items append from storage evercraft:companions constants.menu[4]
data modify entity @s Items append from storage evercraft:companions constants.menu[5]
data modify entity @s Items append from storage evercraft:companions constants.menu[6]
data modify entity @s Items append from storage evercraft:companions constants.menu[7]
data modify entity @s Items append from storage evercraft:companions constants.menu[8]
execute if score #PetCount Pets.Menu matches 19.. run data modify entity @s Items append from storage evercraft:companions constants.pages[1]

execute if entity @a[distance=..5, tag=Pets.Hidden, predicate=evercraft:companions/check_id, limit=1] run item modify entity @s container.19 evercraft:companions/hidden
execute if entity @a[distance=..5, tag=!Pets.Hidden, predicate=evercraft:companions/check_id, limit=1] run item modify entity @s container.19 evercraft:companions/visibility

execute if entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu/layout/pet_display