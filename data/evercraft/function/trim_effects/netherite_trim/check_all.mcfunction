# Consolidated netherite trim checks — Dream Rate + Resistance + Gravity Control

# Early exit: no netherite trim equipped and no active netherite state tags — skip all 30 checks
# Tags checked first (cheap) for short-circuit when an active netherite user hits the first match
execute unless entity @s[tag=netherite_head] unless entity @s[tag=netherite_chest] unless entity @s[tag=netherite_legs] unless entity @s[tag=netherite_feet] unless entity @s[tag=netherite_floating] unless entity @s[tag=netherite_falling_fast] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim run return 0

# Particles
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim run function evercraft:trim_effects/netherite_trim/netherite_trim_particle

# Apply/remove base effects
execute if entity @s[tag=!netherite_head,tag=!netherite_falling_fast] if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run function evercraft:trim_effects/netherite_trim/apply_netherite_trim
execute if entity @s[tag=!netherite_chest,tag=!netherite_falling_fast] if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run function evercraft:trim_effects/netherite_trim/apply_netherite_trim
execute if entity @s[tag=!netherite_legs,tag=!netherite_falling_fast] if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run function evercraft:trim_effects/netherite_trim/apply_netherite_trim
execute if entity @s[tag=!netherite_feet,tag=!netherite_falling_fast] if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run function evercraft:trim_effects/netherite_trim/apply_netherite_trim

# Full set bonus — Resistance I (constant)
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run function evercraft:trim_effects/netherite_trim/apply_netherite_effect

# Float mechanics (full set only)
execute if entity @s[tag=!netherite_floating,tag=netherite_head,tag=netherite_chest,tag=netherite_legs,tag=netherite_feet] if predicate evercraft:trim_effects/sneaking run function evercraft:trim_effects/netherite_trim/start_float
execute if entity @s[tag=netherite_floating] unless predicate evercraft:trim_effects/sneaking run function evercraft:trim_effects/netherite_trim/stop_float
execute if entity @s[tag=netherite_floating] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim run function evercraft:trim_effects/netherite_trim/stop_float

# Track fall distance while airborne (fall_distance resets on landing tick, so store it each airborne tick)
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim if block ~ ~-0.1 ~ #minecraft:replaceable store result score @s te.fall_dist run data get entity @s fall_distance 1

# Fast falling and landing
execute if entity @s[tag=netherite_falling_fast] unless block ~ ~-0.1 ~ #minecraft:replaceable run tag @s remove netherite_falling_fast
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim unless block ~ ~-0.1 ~ #minecraft:replaceable unless entity @s[tag=netherite_on_ground] run function evercraft:trim_effects/netherite_trim/land_particles
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim unless block ~ ~-0.1 ~ #minecraft:replaceable unless entity @s[tag=netherite_on_ground] if score @s te.fall_dist matches 16.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 0.8
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim unless block ~ ~-0.1 ~ #minecraft:replaceable run tag @s add netherite_on_ground
execute if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim if block ~ ~-0.1 ~ #minecraft:replaceable run tag @s remove netherite_on_ground

# Remove
execute if entity @s[tag=netherite_head] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_head run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
execute if entity @s[tag=netherite_chest] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
execute if entity @s[tag=netherite_legs] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
execute if entity @s[tag=netherite_feet] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
