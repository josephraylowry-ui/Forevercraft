# Bow enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Conflict group: Infinity vs Mending

# Ench 1+: Power
execute if score #wm_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:power" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 2+: Punch
execute if score #wm_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:punch" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 3+: Flame
execute if score #wm_ench_level ec.var matches 3.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:flame" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 4+: Infinity (the default conflict enchant — all tiers get this)
execute if score #wm_ench_level ec.var matches 4.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:infinity" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 5+: Looting (arrow kills check mainhand for Looting)
execute if score #wm_ench_level ec.var matches 5.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:looting" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 6.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 7+: Mending (skip for mythical — already unbreakable AND conflicts with Infinity)
execute if score #wm_ench_level ec.var matches 7.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #wm_ench_level ec.var

# Note: Bow conflict is Infinity vs Mending. Mythical gets Infinity (ench 4) but skips Mending
# (doesn't need it — unbreakable). Exquisite/ornate/etc get BOTH Infinity + Mending via prestige
# (the weapon mastery system overrides vanilla conflict rules by setting enchants directly).
