# Consolidated diamond trim checks — Pet Scaling + Slow Fall + Night Vision
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_trim run function evercraft:trim_effects/diamond_trim/diamond_trim_particle
execute if entity @s[tag=!diamond_head] if predicate evercraft:trim_effects/trim/diamond_trim/diamond_head run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if entity @s[tag=!diamond_chest] if predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if entity @s[tag=!diamond_legs] if predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if entity @s[tag=!diamond_feet] if predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if predicate evercraft:trim_effects/trim/diamond_trim/diamond_head if predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest if predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs if predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run function evercraft:trim_effects/diamond_trim/apply_diamond_effect
execute if entity @s[tag=diamond_head] unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_head run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
execute if entity @s[tag=diamond_chest] unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
execute if entity @s[tag=diamond_legs] unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
execute if entity @s[tag=diamond_feet] unless predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
