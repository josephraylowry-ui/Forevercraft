advancement revoke @s only evercraft:companions/abilities/phoenix
scoreboard players operation #Search Pets.ID = @s Pets.ID

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 10
execute if score #value Pets.Calc matches 8..12 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 20
execute if score #value Pets.Calc matches 13..17 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 30
execute if score #value Pets.Calc matches 18..22 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 40
execute if score #value Pets.Calc matches 23..27 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 50
execute if score #value Pets.Calc matches 28..32 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 60
execute if score #value Pets.Calc matches 33..37 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 70
execute if score #value Pets.Calc matches 38..42 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 80
execute if score #value Pets.Calc matches 43..47 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 90
execute if score #value Pets.Calc matches 48..52 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 100
execute if score #value Pets.Calc matches 53..57 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 110
execute if score #value Pets.Calc matches 58..62 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 120
execute if score #value Pets.Calc matches 63..67 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 130
execute if score #value Pets.Calc matches 68..72 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 140
execute if score #value Pets.Calc matches 73..77 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 150
execute if score #value Pets.Calc matches 78..82 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 160
execute if score #value Pets.Calc matches 83..87 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 170
execute if score #value Pets.Calc matches 88..92 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 180
execute if score #value Pets.Calc matches 93..97 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 190
execute if score #value Pets.Calc matches 98..100 as @e[distance=..10, type=#undead, predicate=evercraft:companions/is_hurt] run return run data modify entity @s Fire set value 200
# Achievement tracking
scoreboard players add @s ach.pet_abilities 1
