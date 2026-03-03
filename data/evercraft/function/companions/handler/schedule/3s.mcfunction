tag @s add Pets.TimerOwner
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players set #3s Pets.Timer 60

execute as @s[team=Pets.ImmuneToWarden] at @s as @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id] run return run function evercraft:companions/handler/active_pet/abilities/trigger/warden