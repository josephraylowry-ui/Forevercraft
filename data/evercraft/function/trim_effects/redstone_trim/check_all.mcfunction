# Consolidated redstone trim checks — Crop Speed + No Crop Break
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_trim run function evercraft:trim_effects/redstone_trim/redstone_trim_particle
execute if entity @s[tag=!redstone_head] if predicate evercraft:trim_effects/trim/redstone_trim/redstone_head run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if entity @s[tag=!redstone_chest] if predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if entity @s[tag=!redstone_legs] if predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if entity @s[tag=!redstone_feet] if predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if predicate evercraft:trim_effects/trim/redstone_trim/redstone_head if predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest if predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs if predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet run function evercraft:trim_effects/redstone_trim/apply_redstone_effect
execute if entity @s[tag=redstone_head] unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_head run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
execute if entity @s[tag=redstone_chest] unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
execute if entity @s[tag=redstone_legs] unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
execute if entity @s[tag=redstone_feet] unless predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
