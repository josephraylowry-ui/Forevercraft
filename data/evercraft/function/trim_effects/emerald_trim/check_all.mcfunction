# Consolidated emerald trim checks — Dodge + Speed

# Particles
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_trim run function evercraft:trim_effects/emerald_trim/emerald_trim_particle

# Apply/remove base effects
execute if entity @s[tag=!emerald_head] if predicate evercraft:trim_effects/trim/emerald_trim/emerald_head run function evercraft:trim_effects/emerald_trim/apply_emerald_trim
execute if entity @s[tag=!emerald_chest] if predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest run function evercraft:trim_effects/emerald_trim/apply_emerald_trim
execute if entity @s[tag=!emerald_legs] if predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs run function evercraft:trim_effects/emerald_trim/apply_emerald_trim
execute if entity @s[tag=!emerald_feet] if predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet run function evercraft:trim_effects/emerald_trim/apply_emerald_trim

# Full set bonus — Speed I
execute if predicate evercraft:trim_effects/trim/emerald_trim/emerald_head if predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest if predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs if predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet run function evercraft:trim_effects/emerald_trim/apply_emerald_effect

# Remove
execute if entity @s[tag=emerald_head] unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_head run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
execute if entity @s[tag=emerald_chest] unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
execute if entity @s[tag=emerald_legs] unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
execute if entity @s[tag=emerald_feet] unless predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
