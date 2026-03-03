# Apply relationship multiplier to player attributes
# Run as player via pet_selector context
# Uses #rel_mult Pets.Calc (100 = 1.0x, 150 = 1.5x)

# Skip if no multiplier bonus (level 0)
execute if score #rel_mult Pets.Calc matches ..100 run return fail

# Get current attack damage and multiply
# We'll use an attribute modifier approach for cleaner stacking
execute as @a[predicate=evercraft:companions/check_id, limit=1] run function evercraft:companions/handler/relationship/apply_multiplier_to_player
