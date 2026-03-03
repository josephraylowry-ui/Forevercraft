# Seer Pet Passive Abilities
# - Second Sight: Night vision + luck scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Night Vision - always active
effect give @s night_vision infinite 1 true

# Luck boost - BALANCED (was 25-500, now 0.5-5)
# Vanilla luck ranges from -4 to +4, so this is still a nice boost
execute if score #value Pets.Calc matches 1..10 run return run attribute @s luck base set 0.5
execute if score #value Pets.Calc matches 11..20 run return run attribute @s luck base set 1
execute if score #value Pets.Calc matches 21..30 run return run attribute @s luck base set 1.5
execute if score #value Pets.Calc matches 31..40 run return run attribute @s luck base set 2
execute if score #value Pets.Calc matches 41..50 run return run attribute @s luck base set 2.5
execute if score #value Pets.Calc matches 51..60 run return run attribute @s luck base set 3
execute if score #value Pets.Calc matches 61..70 run return run attribute @s luck base set 3.5
execute if score #value Pets.Calc matches 71..80 run return run attribute @s luck base set 4
execute if score #value Pets.Calc matches 81..90 run return run attribute @s luck base set 4.5
execute if score #value Pets.Calc matches 91..100 run return run attribute @s luck base set 5
