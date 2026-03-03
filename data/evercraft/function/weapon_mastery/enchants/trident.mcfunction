# Trident enchantments — applied to hopper minecart item
# #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Conflict group: Loyalty vs Riptide (also Channeling conflicts with Riptide in vanilla)

# Ench 1+: Impaling
execute if score #wm_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:impaling" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 2+: Loyalty (default conflict enchant — all tiers get this)
execute if score #wm_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:loyalty" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 3+: Channeling
execute if score #wm_ench_level ec.var matches 3.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:channeling" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 4+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 4.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 5+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 5.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 4+: Riptide (mythical gets this at 4 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 4.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:riptide" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 6+: Riptide (exquisite gets this at 6 — needs prestige to reach)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:riptide" int 1 run scoreboard players get #wm_ench_level ec.var
