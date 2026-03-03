# Tag Update
tag @s remove mt.dripstone_helmet
tag @s remove mt.flower_helmet
tag @s remove mt.soul_helmet
tag @s remove mt.fully_refined

# Refined
attribute @s max_health modifier remove mt.fully_refined

# Helmet Detection
tag @s[predicate=evercraft:treasure/armor/dripstone_helmet] add mt.dripstone_helmet
tag @s[predicate=evercraft:treasure/armor/flower_helmet] add mt.flower_helmet
tag @s[predicate=evercraft:treasure/armor/soul_helmet] add mt.soul_helmet
tag @s[predicate=evercraft:treasure/armor/rn_set] add mt.fully_refined

attribute @s[tag=mt.fully_refined] max_health modifier add mt.fully_refined 0.25 add_multiplied_base
advancement revoke @s[tag=mt.fully_refined] only evercraft:treasure/armor/fully_refined

advancement revoke @s only evercraft:treasure/technical/armor/helmet_durability
advancement revoke @s only evercraft:treasure/technical/armor/helmet