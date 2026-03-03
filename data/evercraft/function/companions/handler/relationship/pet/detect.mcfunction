# Detect petting interaction
# Run as player with active pet
# Petting: Sneak + empty mainhand + looking at pet within 3 blocks

# Skip if on cooldown
execute if score @s Pets.PetCD matches 1.. run return fail

# Skip if not sneaking
execute unless entity @s[predicate=evercraft:companions/is_sneaking] run return fail

# Skip if holding something
execute unless predicate evercraft:companions/empty_mainhand run return fail

# Skip if no pet nearby
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute unless entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, distance=..3] run return fail

# Check if looking at pet (raycast approximation - pet must be in front)
execute anchored eyes positioned ^ ^ ^2 unless entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, distance=..2] run return fail

# Process petting
function evercraft:companions/handler/relationship/pet/process
