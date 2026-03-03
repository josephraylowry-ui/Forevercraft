# Save relationship points back to pet NBT
# Run as player with active pet
# Reads from @s Pets.RP

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Clamp RP to 0-5000
execute if score @s Pets.RP < #0 Pets.Calc run scoreboard players set @s Pets.RP 0
execute if score @s Pets.RP > #5000 Pets.Calc run scoreboard players set @s Pets.RP 5000

# Convert score to NBT string
scoreboard players operation #value Pets.Calc = @s Pets.RP
function evercraft:companions/handler/math/int_to_string

# Update pet NBT
execute as @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run data modify entity @s item.components."minecraft:profile".properties[{name:"relationship"}].value set from storage evercraft:companions math.string
