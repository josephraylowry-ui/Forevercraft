# Load relationship points from active pet into scoreboard
# Run as player with active pet
# Sets: Pets.RP, Pets.RelLevel, Pets.RelMult

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Check if pet has relationship data, if not initialize it
execute unless data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}] as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run function evercraft:companions/handler/relationship/init

# Get RP from pet NBT
data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"relationship"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation @s Pets.RP = #value Pets.Calc

# Calculate relationship level (0-5)
scoreboard players set @s Pets.RelLevel 0
execute if score @s Pets.RP >= #RelLvl1 Pets.Calc run scoreboard players set @s Pets.RelLevel 1
execute if score @s Pets.RP >= #RelLvl2 Pets.Calc run scoreboard players set @s Pets.RelLevel 2
execute if score @s Pets.RP >= #RelLvl3 Pets.Calc run scoreboard players set @s Pets.RelLevel 3
execute if score @s Pets.RP >= #RelLvl4 Pets.Calc run scoreboard players set @s Pets.RelLevel 4
execute if score @s Pets.RP >= #RelLvl5 Pets.Calc run scoreboard players set @s Pets.RelLevel 5

# Calculate multiplier (100 = 1.0x, 150 = 1.5x)
# Level 0 = 100, Level 1 = 110, Level 2 = 120, Level 3 = 130, Level 4 = 140, Level 5 = 150
scoreboard players set @s Pets.RelMult 100
execute if score @s Pets.RelLevel matches 1 run scoreboard players set @s Pets.RelMult 110
execute if score @s Pets.RelLevel matches 2 run scoreboard players set @s Pets.RelMult 120
execute if score @s Pets.RelLevel matches 3 run scoreboard players set @s Pets.RelMult 130
execute if score @s Pets.RelLevel matches 4 run scoreboard players set @s Pets.RelMult 140
execute if score @s Pets.RelLevel matches 5 run scoreboard players set @s Pets.RelMult 150
