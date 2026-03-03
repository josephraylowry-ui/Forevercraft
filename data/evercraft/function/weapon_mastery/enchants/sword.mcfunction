# Sword enchantments — applied to hopper minecart item
# #wm_level = weapon level, #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}

# Ench 1+: Sharpness
execute if score #wm_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:sharpness" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 2+: Fire Aspect
execute if score #wm_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fire_aspect" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 3+: Sweeping Edge
execute if score #wm_ench_level ec.var matches 3.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:sweeping_edge" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 4+: Knockback
execute if score #wm_ench_level ec.var matches 4.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:knockback" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 5+: Looting
execute if score #wm_ench_level ec.var matches 5.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:looting" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 6.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 7+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 7.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 6+: Smite (mythical gets this at 6 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:smite" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 8+: Smite (exquisite gets this at 8 — needs prestige to reach)
execute if score #wm_ench_level ec.var matches 8.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:smite" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 7+: Bane of Arthropods (mythical gets this at 7 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 7.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:bane_of_arthropods" int 1 run scoreboard players get #wm_ench_level ec.var
