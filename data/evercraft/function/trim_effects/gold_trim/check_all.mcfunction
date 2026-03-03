# Consolidated gold trim checks — Armor + Fire Protection + Strength in structures
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_trim run function evercraft:trim_effects/gold_trim/gold_trim_particle
execute if entity @s[tag=!gold_head] if predicate evercraft:trim_effects/trim/gold_trim/gold_head run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if entity @s[tag=!gold_chest] if predicate evercraft:trim_effects/trim/gold_trim/gold_chest run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if entity @s[tag=!gold_legs] if predicate evercraft:trim_effects/trim/gold_trim/gold_legs run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if entity @s[tag=!gold_feet] if predicate evercraft:trim_effects/trim/gold_trim/gold_feet run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if predicate evercraft:trim_effects/trim/gold_trim/gold_head if predicate evercraft:trim_effects/trim/gold_trim/gold_chest if predicate evercraft:trim_effects/trim/gold_trim/gold_legs if predicate evercraft:trim_effects/trim/gold_trim/gold_feet run function evercraft:trim_effects/gold_trim/apply_gold_effect
execute if entity @s[tag=gold_head] unless predicate evercraft:trim_effects/trim/gold_trim/gold_head run function evercraft:trim_effects/gold_trim/remove_gold_trim
execute if entity @s[tag=gold_chest] unless predicate evercraft:trim_effects/trim/gold_trim/gold_chest run function evercraft:trim_effects/gold_trim/remove_gold_trim
execute if entity @s[tag=gold_legs] unless predicate evercraft:trim_effects/trim/gold_trim/gold_legs run function evercraft:trim_effects/gold_trim/remove_gold_trim
execute if entity @s[tag=gold_feet] unless predicate evercraft:trim_effects/trim/gold_trim/gold_feet run function evercraft:trim_effects/gold_trim/remove_gold_trim
