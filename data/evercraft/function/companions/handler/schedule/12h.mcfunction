tag @s add Pets.TimerOwner
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players set #12h Pets.Timer 864000

execute as @s[tag=Pets.Phoenix] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[9].extra[{text:"18"}] run return run function evercraft:companions/handler/active_pet/abilities/trigger/phoenix_totem