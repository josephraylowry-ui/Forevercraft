tag @s add Pets.InMenu2

scoreboard players operation #Search Pets.ID = @s Pets.ID

# --------------------------------------------------------------------------------- #

execute positioned 0 -60 0 as @n[distance=..10, type=marker, tag=Pets.Marker, predicate=evercraft:companions/check_id] run function evercraft:companions/handler/menu/layout/page_2/set_slots

execute at @s as @e[distance=..4, type=chest_minecart, tag=Pets.PetMenu, predicate=evercraft:companions/check_id, limit=1] run function evercraft:companions/handler/menu/layout/page_2/fill_bottom