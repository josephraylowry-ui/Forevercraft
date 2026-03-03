# ============================================================
# Apply Depth Multiplier to Mob Spawn Roll
# Called from patron/furia depth_bonus when evaluating spawn chances
# ec.spawn_roll should be set before calling
# ============================================================

# Calculate depth multiplier for this location
function evercraft:quests/depth/calculate

# Apply multiplier to spawn roll
# spawn_roll * depth_mult / 100
scoreboard players operation @s ec.spawn_roll *= @s ec.depth_mult
scoreboard players operation @s ec.spawn_roll /= #100 ec.const
