# Consolidated quartz trim checks — XP Gain
execute if predicate evercraft:trim_effects/trim/quartz_trim/quartz_trim run function evercraft:trim_effects/quartz_trim/quartz_trim_particle
execute if entity @s[tag=!quartz_head] if predicate evercraft:trim_effects/trim/quartz_trim/quartz_head run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=!quartz_chest] if predicate evercraft:trim_effects/trim/quartz_trim/quartz_chest run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=!quartz_legs] if predicate evercraft:trim_effects/trim/quartz_trim/quartz_legs run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=!quartz_feet] if predicate evercraft:trim_effects/trim/quartz_trim/quartz_feet run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=quartz_head] unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_head run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
execute if entity @s[tag=quartz_chest] unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_chest run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
execute if entity @s[tag=quartz_legs] unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_legs run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
execute if entity @s[tag=quartz_feet] unless predicate evercraft:trim_effects/trim/quartz_trim/quartz_feet run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
