tag @s add Pets.TimerOwner
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players set #30s Pets.Timer 600

execute as @s[tag=Pets.Chicken] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[5].extra[{text:"30"}] as @a[tag=Pets.TimerOwner] at @s run return run function evercraft:companions/handler/active_pet/abilities/trigger/chicken

execute as @s[tag=Pets.Pufferfish] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[5].extra[{text:"30"}] as @a[tag=Pets.TimerOwner] at @s run return run function evercraft:companions/handler/active_pet/abilities/trigger/pufferfish