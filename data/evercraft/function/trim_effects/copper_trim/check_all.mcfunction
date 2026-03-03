# Consolidated copper trim checks —healthpenalty + Haste/Regen
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_trim run function evercraft:trim_effects/copper_trim/copper_trim_particle
execute if entity @s[tag=!copper_head] if predicate evercraft:trim_effects/trim/copper_trim/copper_head run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if entity @s[tag=!copper_chest] if predicate evercraft:trim_effects/trim/copper_trim/copper_chest run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if entity @s[tag=!copper_legs] if predicate evercraft:trim_effects/trim/copper_trim/copper_legs run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if entity @s[tag=!copper_feet] if predicate evercraft:trim_effects/trim/copper_trim/copper_feet run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if predicate evercraft:trim_effects/trim/copper_trim/copper_head if predicate evercraft:trim_effects/trim/copper_trim/copper_chest if predicate evercraft:trim_effects/trim/copper_trim/copper_legs if predicate evercraft:trim_effects/trim/copper_trim/copper_feet run function evercraft:trim_effects/copper_trim/apply_copper_effect
execute if entity @s[tag=copper_head] unless predicate evercraft:trim_effects/trim/copper_trim/copper_head run function evercraft:trim_effects/copper_trim/remove_copper_trim
execute if entity @s[tag=copper_chest] unless predicate evercraft:trim_effects/trim/copper_trim/copper_chest run function evercraft:trim_effects/copper_trim/remove_copper_trim
execute if entity @s[tag=copper_legs] unless predicate evercraft:trim_effects/trim/copper_trim/copper_legs run function evercraft:trim_effects/copper_trim/remove_copper_trim
execute if entity @s[tag=copper_feet] unless predicate evercraft:trim_effects/trim/copper_trim/copper_feet run function evercraft:trim_effects/copper_trim/remove_copper_trim
