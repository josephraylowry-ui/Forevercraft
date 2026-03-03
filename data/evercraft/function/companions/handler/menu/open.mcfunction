advancement revoke @s only evercraft:companions/menu/open
execute if data storage evercraft:companions uninstalled run return fail

tag @s add Pets.InMenu
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players operation #PetCount Pets.Menu = @s Pets.Count

# --------------------------------------------------------------------------------- #

execute positioned 0 -60 0 as @n[distance=..10, type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu/layout/page_1/set_slots

execute at @s as @n[distance=..4, type=chest_minecart, tag=Pets.PetMenu, predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu/layout/page_1/fill_bottom