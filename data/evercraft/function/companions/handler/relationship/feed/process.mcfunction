# Process feeding - called with macro {rp:N, cd:N, food:"type"}
# Run as player who is feeding

$scoreboard players set #feedRP Pets.Calc $(rp)
$scoreboard players set @s Pets.FeedCD $(cd)

# Check for favorite food bonus (2x RP)
function evercraft:companions/handler/relationship/feed/check_favorite

# Load current RP
function evercraft:companions/handler/relationship/load_rp

# Store old level for comparison
scoreboard players operation #oldLevel Pets.Calc = @s Pets.RelLevel

# Apply memory bonus to RP gain (modifies #feedRP if 5+ memories)
function evercraft:companions/memories/apply_bonus

# Add RP
scoreboard players operation @s Pets.RP += #feedRP Pets.Calc

# Cap at 5000
execute if score @s Pets.RP > #5000 Pets.Calc run scoreboard players set @s Pets.RP 5000

# Save new RP
function evercraft:companions/handler/relationship/save_rp

# Recalculate level
function evercraft:companions/handler/relationship/load_rp

# Consume 1 of the food item
item modify entity @s weapon.mainhand evercraft:companions/consume_one

# Play effects
execute at @s run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute at @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] run particle heart ~ ~0.5 ~ 0.3 0.3 0.3 0 5

# Show message
$tellraw @s [{text:""},{selector:"@e[type=item_display,tag=Pet,predicate=evercraft:companions/check_id,limit=1]"},{text:" really enjoyed the treat! ",color:"green"},{text:"(+$(rp) RP)",color:"yellow"}]

# Check for level up
execute unless score @s Pets.RelLevel = #oldLevel Pets.Calc run function evercraft:companions/handler/relationship/level_up

# Achievement tracking
scoreboard players add @s ach.pet_feeds 1
