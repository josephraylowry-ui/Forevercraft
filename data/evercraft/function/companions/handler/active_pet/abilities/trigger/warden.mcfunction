execute as @e[distance=..50, type=warden] run team join Pets.ImmuneToWarden

data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:lore"[5].extra[0].text
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 10 run return run effect give @e[distance=..10, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 11..12 run return run effect give @e[distance=..12, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 13..14 run return run effect give @e[distance=..14, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 15..16 run return run effect give @e[distance=..16, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 17..18 run return run effect give @e[distance=..18, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 19..20 run return run effect give @e[distance=..20, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 21..22 run return run effect give @e[distance=..22, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 23..24 run return run effect give @e[distance=..24, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 25..26 run return run effect give @e[distance=..26, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 27..28 run return run effect give @e[distance=..28, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 29..30 run return run effect give @e[distance=..30, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 31..32 run return run effect give @e[distance=..32, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 33..34 run return run effect give @e[distance=..34, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 35..36 run return run effect give @e[distance=..36, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 37..38 run return run effect give @e[distance=..38, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 39..40 run return run effect give @e[distance=..40, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 41..42 run return run effect give @e[distance=..42, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 43..44 run return run effect give @e[distance=..44, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 45..46 run return run effect give @e[distance=..46, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 47..48 run return run effect give @e[distance=..48, type=#undead] glowing 2 1 true
execute if score #value Pets.Calc matches 49..50 run return run effect give @e[distance=..50, type=#undead] glowing 2 1 true
# Achievement tracking (only if ability actually fired — fallthrough means level was out of range)
execute if score #value Pets.Calc matches 10.. run scoreboard players add @s ach.pet_abilities 1
