# Detect if player is trying to feed their pet
# Run as player, checks for:
# 1. Has active pet nearby
# 2. Holding valid food item
# 3. Not on cooldown

# Skip if on cooldown
execute if score @s Pets.FeedCD matches 1.. run return fail

# Skip if no active pet within 5 blocks
scoreboard players operation #Search Pets.ID = @s Pets.ID
execute unless entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, distance=..5] run return fail

# Check for valid food items and set RP value
# Check for valid food items and call process (which uses return to exit early)
# Tier 1: Basic (5 RP)
execute if predicate evercraft:companions/food/rotten_flesh run return run function evercraft:companions/handler/relationship/feed/process {rp:5,cd:600,food:"rotten_flesh"}

# Tier 2: Raw Meat (10 RP)
execute if predicate evercraft:companions/food/raw_meat run return run function evercraft:companions/handler/relationship/feed/process {rp:10,cd:600,food:"raw_meat"}

# Tier 3: Cooked Meat (20 RP)
execute if predicate evercraft:companions/food/cooked_meat run return run function evercraft:companions/handler/relationship/feed/process {rp:20,cd:600,food:"cooked_meat"}

# Tier 4: Golden Carrot (30 RP)
execute if predicate evercraft:companions/food/golden_carrot run return run function evercraft:companions/handler/relationship/feed/process {rp:30,cd:1200,food:"golden_carrot"}

# Tier 5: Golden Apple (50 RP)
execute if predicate evercraft:companions/food/golden_apple run return run function evercraft:companions/handler/relationship/feed/process {rp:50,cd:6000,food:"golden_apple"}

# Tier 6e: Golden Morsel (300 RP)
execute if predicate evercraft:companions/food/treat_tier5 run return run function evercraft:companions/handler/relationship/feed/process {rp:300,cd:2400,food:"golden_morsel"}

# Tier 6d: Savory Bone Broth (200 RP)
execute if predicate evercraft:companions/food/treat_tier4 run return run function evercraft:companions/handler/relationship/feed/process {rp:200,cd:2400,food:"bone_broth"}

# Tier 6c: Honey Cake (150 RP)
execute if predicate evercraft:companions/food/treat_tier3 run return run function evercraft:companions/handler/relationship/feed/process {rp:150,cd:2400,food:"honey_cake"}

# Tier 6b: Meadow Biscuit (100 RP)
execute if predicate evercraft:companions/food/treat_tier2 run return run function evercraft:companions/handler/relationship/feed/process {rp:100,cd:2400,food:"meadow_biscuit"}

# Tier 6: Companion Treat (75 RP) — base treat
execute if predicate evercraft:companions/food/pet_treat run return run function evercraft:companions/handler/relationship/feed/process {rp:75,cd:2400,food:"pet_treat"}

# Tier 7: Enchanted Golden Apple (100 RP)
execute if predicate evercraft:companions/food/enchanted_golden_apple run return run function evercraft:companions/handler/relationship/feed/process {rp:100,cd:12000,food:"enchanted_apple"}

# No valid food found — return fail so petting can proceed
return fail
