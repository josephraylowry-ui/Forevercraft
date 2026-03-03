tag @s add Pets.TimerOwner
scoreboard players operation #Search Pets.ID = @s Pets.ID

scoreboard players set #10s Pets.Timer 200

execute as @s[tag=Pets.Chicken] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[5].extra[{text:"10"}] as @a[tag=Pets.TimerOwner] at @s run return run function evercraft:companions/handler/active_pet/abilities/trigger/chicken

execute as @s[tag=Pets.Pufferfish] if data entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[5].extra[{text:"10"}] as @a[tag=Pets.TimerOwner] at @s run return run function evercraft:companions/handler/active_pet/abilities/trigger/pufferfish

execute as @s[tag=Pets.Reaper] run function evercraft:companions/handler/active_pet/abilities/trigger/reaper_aura

# Claude - Ore Sight (scans for nearby ores every 10s)
execute as @s[tag=Pets.Claude] at @s run function evercraft:companions/handler/active_pet/abilities/trigger/claude_ore_sight