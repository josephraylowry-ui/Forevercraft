# Consolidated iron trim checks — Damage + Slowness
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_trim run function evercraft:trim_effects/iron_trim/iron_trim_particle
execute if entity @s[tag=!iron_head] if predicate evercraft:trim_effects/trim/iron_trim/iron_head run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if entity @s[tag=!iron_chest] if predicate evercraft:trim_effects/trim/iron_trim/iron_chest run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if entity @s[tag=!iron_legs] if predicate evercraft:trim_effects/trim/iron_trim/iron_legs run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if entity @s[tag=!iron_feet] if predicate evercraft:trim_effects/trim/iron_trim/iron_feet run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if predicate evercraft:trim_effects/trim/iron_trim/iron_head if predicate evercraft:trim_effects/trim/iron_trim/iron_chest if predicate evercraft:trim_effects/trim/iron_trim/iron_legs if predicate evercraft:trim_effects/trim/iron_trim/iron_feet run function evercraft:trim_effects/iron_trim/apply_iron_effect
execute if entity @s[tag=iron_head] unless predicate evercraft:trim_effects/trim/iron_trim/iron_head run function evercraft:trim_effects/iron_trim/remove_iron_trim
execute if entity @s[tag=iron_chest] unless predicate evercraft:trim_effects/trim/iron_trim/iron_chest run function evercraft:trim_effects/iron_trim/remove_iron_trim
execute if entity @s[tag=iron_legs] unless predicate evercraft:trim_effects/trim/iron_trim/iron_legs run function evercraft:trim_effects/iron_trim/remove_iron_trim
execute if entity @s[tag=iron_feet] unless predicate evercraft:trim_effects/trim/iron_trim/iron_feet run function evercraft:trim_effects/iron_trim/remove_iron_trim
