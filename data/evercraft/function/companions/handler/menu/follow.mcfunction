scoreboard players operation #Search Pets.ID = @s Pets.ID

# --------------------------------------------------------------------------------- #

execute store result score @s Pets.Temp if entity @e[type=chest_minecart, tag=Pets.PetMenu, predicate=evercraft:companions/check_id]
execute if score @s Pets.Temp matches 2.. run function evercraft:companions/handler/menu/force_despawn

# --------------------------------------------------------------------------------- #

execute anchored eyes positioned ^ ^ ^ run tp @e[distance=..4.5, type=item_display, tag=Pets.MenuVehicle, predicate=evercraft:companions/check_id, sort=nearest, limit=1] ~ ~-.4 ~

kill @e[distance=..10, type=item, predicate=evercraft:companions/menu/menu_item]