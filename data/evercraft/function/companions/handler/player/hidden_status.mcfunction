tag @s add Pets.Hidden
scoreboard players operation #Search Pets.ID = @s Pets.ID

# --------------------------------------------------------------------------------- #

data modify entity @n[distance=..30, type=item_display, tag=Pet, predicate=evercraft:companions/check_id] view_range set value 0f

playsound ui.button.click master @s ~ ~ ~ 1 1