data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:lore"[7].extra[0].text
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..9 run return run effect give @e[distance=..10, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 10..19 run return run effect give @e[distance=..12, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 20..29 run return run effect give @e[distance=..14, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 30..39 run return run effect give @e[distance=..16, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 40..49 run return run effect give @e[distance=..18, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 50..59 run return run effect give @e[distance=..20, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 60..69 run return run effect give @e[distance=..22, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 70..79 run return run effect give @e[distance=..24, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 80..89 run return run effect give @e[distance=..26, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 90..99 run return run effect give @e[distance=..28, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
execute if score #value Pets.Calc matches 100 run return run effect give @e[distance=..30, type=#evercraft:companions/hostile, sort=nearest, limit=1] glowing 3 1 true
# Achievement tracking
scoreboard players add @s ach.pet_abilities 1
