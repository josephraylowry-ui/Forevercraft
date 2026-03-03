# Consolidated amethyst trim checks — Dream Rate + Block Break Speed
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_trim run function evercraft:trim_effects/amethyst_trim/amethyst_trim_particle
execute if entity @s[tag=!amethyst_head] if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if entity @s[tag=!amethyst_chest] if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if entity @s[tag=!amethyst_legs] if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if entity @s[tag=!amethyst_feet] if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run function evercraft:trim_effects/amethyst_trim/apply_amethyst_effect
execute if entity @s[tag=amethyst_head] unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
execute if entity @s[tag=amethyst_chest] unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
execute if entity @s[tag=amethyst_legs] unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
execute if entity @s[tag=amethyst_feet] unless predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
