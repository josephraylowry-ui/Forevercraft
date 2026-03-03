advancement revoke @s only evercraft:companions/abilities/dog
scoreboard players operation #Search Pets.ID = @s Pets.ID

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 if predicate {condition:"random_chance",chance:0.05} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 8..12 if predicate {condition:"random_chance",chance:0.1} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 13..17 if predicate {condition:"random_chance",chance:0.15} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 18..22 if predicate {condition:"random_chance",chance:0.2} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 23..27 if predicate {condition:"random_chance",chance:0.25} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 28..32 if predicate {condition:"random_chance",chance:0.3} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 33..37 if predicate {condition:"random_chance",chance:0.35} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 38..42 if predicate {condition:"random_chance",chance:0.4} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 43..47 if predicate {condition:"random_chance",chance:0.45} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 48..52 if predicate {condition:"random_chance",chance:0.5} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 53..57 if predicate {condition:"random_chance",chance:0.55} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 58..62 if predicate {condition:"random_chance",chance:0.6} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 63..67 if predicate {condition:"random_chance",chance:0.65} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 68..72 if predicate {condition:"random_chance",chance:0.7} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 73..77 if predicate {condition:"random_chance",chance:0.75} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 78..82 if predicate {condition:"random_chance",chance:0.8} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 83..87 if predicate {condition:"random_chance",chance:0.85} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 88..92 if predicate {condition:"random_chance",chance:0.9} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 93..97 if predicate {condition:"random_chance",chance:0.95} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
execute if score #value Pets.Calc matches 98..100 if predicate {condition:"random_chance",chance:1} as @e[distance=..9, type=#undead, predicate=evercraft:companions/is_hurt] run return run effect give @s wither 2 1 true
# Achievement tracking
scoreboard players add @s ach.pet_abilities 1
