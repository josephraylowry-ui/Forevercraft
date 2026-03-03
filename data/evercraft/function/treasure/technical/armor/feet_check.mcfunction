# Tag Update
tag @s remove mt.end_boots
tag @s remove mt.jungle_shoes
tag @s remove mt.mushroom_boots
tag @s remove mt.fully_refined

# Refined
attribute @s max_health modifier remove mt.fully_refined

# Boots Detection
tag @s[predicate=evercraft:treasure/armor/end_boots] add mt.end_boots
tag @s[predicate=evercraft:treasure/armor/jungle_shoes] add mt.jungle_shoes
tag @s[predicate=evercraft:treasure/armor/mushroom_boots] add mt.mushroom_boots
tag @s[predicate=evercraft:treasure/armor/rn_set] add mt.fully_refined

attribute @s[tag=mt.fully_refined] max_health modifier add mt.fully_refined 0.25 add_multiplied_base
advancement revoke @s[tag=mt.fully_refined] only evercraft:treasure/armor/fully_refined

advancement revoke @s only evercraft:treasure/technical/armor/boots_durability
advancement revoke @s only evercraft:treasure/technical/armor/boots