# Apply RP decay to player's active pet
# Run as player

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Load current RP
function evercraft:companions/handler/relationship/load_rp

# Store old level
scoreboard players operation #oldLevel Pets.Calc = @s Pets.RelLevel

# Decay by 25 RP per hour
scoreboard players remove @s Pets.RP 25

# Minimum 0
execute if score @s Pets.RP < #0 Pets.Calc run scoreboard players set @s Pets.RP 0

# Save
function evercraft:companions/handler/relationship/save_rp

# Recalculate level
function evercraft:companions/handler/relationship/load_rp

# Check if level dropped
execute unless score @s Pets.RelLevel = #oldLevel Pets.Calc if score @s Pets.RelLevel < #oldLevel Pets.Calc run function evercraft:companions/handler/relationship/level_down
