# Wither Pet Passive Abilities
# - Soul Harvest: Bonus XP (simulated via tag for advancement detection)
# - Withering Aura: Wither effect on nearby hostile mobs
# - Undying Rage: Strength effect + Wither immunity

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Wither

# Undying Rage - Strength (scales 1-3) + clear any wither effect
execute if score #value Pets.Calc matches 1..32 run effect give @s strength infinite 0 true
execute if score #value Pets.Calc matches 33..66 run effect give @s strength infinite 1 true
execute if score #value Pets.Calc matches 67..100 run effect give @s strength infinite 2 true
effect clear @s wither

# Withering Aura - Apply Wither to nearby hostile mobs (range and level scale)
execute if score #value Pets.Calc matches 1..25 run effect give @e[distance=..6, type=#evercraft:companions/hostile, sort=nearest, limit=3] wither 3 0 true
execute if score #value Pets.Calc matches 26..50 run effect give @e[distance=..8, type=#evercraft:companions/hostile, sort=nearest, limit=4] wither 3 0 true
execute if score #value Pets.Calc matches 51..75 run effect give @e[distance=..10, type=#evercraft:companions/hostile, sort=nearest, limit=5] wither 3 1 true
execute if score #value Pets.Calc matches 76..100 run effect give @e[distance=..12, type=#evercraft:companions/hostile, sort=nearest, limit=6] wither 3 1 true
