# Consolidated resin trim checks — Absorption Hearts
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_trim run function evercraft:trim_effects/resin_trim/resin_trim_particle
execute if entity @s[tag=!resin_head] if predicate evercraft:trim_effects/trim/resin_trim/resin_head run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if entity @s[tag=!resin_chest] if predicate evercraft:trim_effects/trim/resin_trim/resin_chest run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if entity @s[tag=!resin_legs] if predicate evercraft:trim_effects/trim/resin_trim/resin_legs run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if entity @s[tag=!resin_feet] if predicate evercraft:trim_effects/trim/resin_trim/resin_feet run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if predicate evercraft:trim_effects/trim/resin_trim/resin_head if predicate evercraft:trim_effects/trim/resin_trim/resin_chest if predicate evercraft:trim_effects/trim/resin_trim/resin_legs if predicate evercraft:trim_effects/trim/resin_trim/resin_feet run function evercraft:trim_effects/resin_trim/apply_resin_effect
execute if entity @s[tag=resin_head] unless predicate evercraft:trim_effects/trim/resin_trim/resin_head run function evercraft:trim_effects/resin_trim/remove_resin_trim
execute if entity @s[tag=resin_chest] unless predicate evercraft:trim_effects/trim/resin_trim/resin_chest run function evercraft:trim_effects/resin_trim/remove_resin_trim
execute if entity @s[tag=resin_legs] unless predicate evercraft:trim_effects/trim/resin_trim/resin_legs run function evercraft:trim_effects/resin_trim/remove_resin_trim
execute if entity @s[tag=resin_feet] unless predicate evercraft:trim_effects/trim/resin_trim/resin_feet run function evercraft:trim_effects/resin_trim/remove_resin_trim
