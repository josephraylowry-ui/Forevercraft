tag @s add Pets.TimerOwner
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players set #5s Pets.Timer 100

# --------------------------------------------------------------------------------- #

execute as @s[tag=Pets.Red_Parrot] as @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id] run return run function evercraft:companions/handler/active_pet/abilities/trigger/red_parrot