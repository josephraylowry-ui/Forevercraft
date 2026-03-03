# Consolidated lapis trim checks — Lure + Water Breathing
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_trim run function evercraft:trim_effects/lapis_trim/lapis_trim_particle
execute if entity @s[tag=!lapis_head] if predicate evercraft:trim_effects/trim/lapis_trim/lapis_head run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if entity @s[tag=!lapis_chest] if predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if entity @s[tag=!lapis_legs] if predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if entity @s[tag=!lapis_feet] if predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if predicate evercraft:trim_effects/trim/lapis_trim/lapis_head if predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest if predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs if predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet run function evercraft:trim_effects/lapis_trim/apply_lapis_effect
execute if entity @s[tag=lapis_head] unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_head run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
execute if entity @s[tag=lapis_chest] unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
execute if entity @s[tag=lapis_legs] unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
execute if entity @s[tag=lapis_feet] unless predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
