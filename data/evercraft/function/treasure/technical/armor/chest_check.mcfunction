# Tag Update
tag @s remove mt.desert_chestplate
tag @s remove mt.dark_forest_chestplate
tag @s remove mt.crimson_chestplate
tag @s remove mt.ocean_chestplate
tag @s remove mt.swamp_chestplate
tag @s remove mt.wind_chestplate
tag @s remove mt.fully_refined

# Refined
attribute @s max_health modifier remove mt.fully_refined

# Chestplate Detection
tag @s[predicate=evercraft:treasure/armor/dark_forest_chestplate] add mt.dark_forest_chestplate
tag @s[predicate=evercraft:treasure/armor/desert_chestplate] add mt.desert_chestplate
tag @s[predicate=evercraft:treasure/armor/crimson_chestplate] add mt.crimson_chestplate
tag @s[predicate=evercraft:treasure/armor/ocean_chestplate] add mt.ocean_chestplate
tag @s[predicate=evercraft:treasure/armor/swamp_chestplate] add mt.swamp_chestplate
tag @s[predicate=evercraft:treasure/armor/wind_chestplate] add mt.wind_chestplate
tag @s[predicate=evercraft:treasure/armor/rn_set] add mt.fully_refined

attribute @s[tag=mt.fully_refined] max_health modifier add mt.fully_refined 0.25 add_multiplied_base
advancement revoke @s[tag=mt.fully_refined] only evercraft:treasure/armor/fully_refined

advancement revoke @s only evercraft:treasure/technical/armor/chest_durability
advancement revoke @s only evercraft:treasure/technical/armor/chestplate