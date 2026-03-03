tag @s add Pets.TimerOwner
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players set #2m Pets.Timer 2400

execute as @s[tag=Pets.Blue_Dragon] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[9].extra[{text:"120"}] run return run function evercraft:companions/handler/active_pet/abilities/trigger/blue_dragon

execute as @s[tag=Pets.Red_Dragon] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[9].extra[{text:"120"}] run return run function evercraft:companions/handler/active_pet/abilities/trigger/red_dragon