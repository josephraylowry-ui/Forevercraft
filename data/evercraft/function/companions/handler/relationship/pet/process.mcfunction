# Process petting interaction
# Run as player
# Gives +5 RP, 5 minute cooldown

# Skip if on cooldown
execute if score @s Pets.PetCD matches 1.. run return fail

# Set cooldown (5 minutes = 6000 ticks)
scoreboard players set @s Pets.PetCD 6000

# Load current RP
function evercraft:companions/handler/relationship/load_rp

# Store old level
scoreboard players operation #oldLevel Pets.Calc = @s Pets.RelLevel

# Add 5 RP for petting
scoreboard players add @s Pets.RP 5

# Cap at 5000
execute if score @s Pets.RP > #5000 Pets.Calc run scoreboard players set @s Pets.RP 5000

# Save RP
function evercraft:companions/handler/relationship/save_rp

# Recalculate level
function evercraft:companions/handler/relationship/load_rp

# Effects
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run particle heart ~ ~0.5 ~ 0.2 0.2 0.2 0 3
execute at @s run playsound minecraft:entity.wolf.whine master @s ~ ~ ~ 0.5 1.5

# Message
tellraw @s [{text:"You pet "},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:"! ",color:"white"},{text:"(+5 RP)",color:"yellow"}]

# Check for level up
execute unless score @s Pets.RelLevel = #oldLevel Pets.Calc run function evercraft:companions/handler/relationship/level_up

# Return success for interaction tracking
return 1
