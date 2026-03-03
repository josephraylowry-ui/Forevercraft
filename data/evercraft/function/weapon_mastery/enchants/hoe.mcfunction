# Hoe enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# No conflict group — Fortune only (no Silk Touch per design)

# Ench 1+: Efficiency
execute if score #wm_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:efficiency" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 2+: Fortune
execute if score #wm_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fortune" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 3+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 3.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 4+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 4.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #wm_ench_level ec.var
