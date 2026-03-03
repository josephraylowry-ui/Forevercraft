data modify storage evercraft:companions math.string set string entity @e[distance=..25, type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:lore"[6].extra[0].text
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 15 run effect give @e[distance=..15, type=#undead] wither 8 1
execute if score #value Pets.Calc matches 15 run scoreboard players add @s ach.pet_abilities 1
execute if score #value Pets.Calc matches 15 run return run effect give @e[distance=..15, type=#undead] slowness 8 1

execute if score #value Pets.Calc matches 20 run effect give @e[distance=..20, type=#undead] wither 8 1
execute if score #value Pets.Calc matches 20 run scoreboard players add @s ach.pet_abilities 1
execute if score #value Pets.Calc matches 20 run return run effect give @e[distance=..20, type=#undead] slowness 8 1

execute if score #value Pets.Calc matches 25 run effect give @e[distance=..25, type=#undead] wither 8 1
execute if score #value Pets.Calc matches 25 run scoreboard players add @s ach.pet_abilities 1
execute if score #value Pets.Calc matches 25 run return run effect give @e[distance=..25, type=#undead] slowness 8 1
