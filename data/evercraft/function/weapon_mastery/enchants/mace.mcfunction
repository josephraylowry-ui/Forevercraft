# Mace (Striker class) enchantments — applied to hopper minecart item
# #wm_level = weapon level, #wm_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:weapon_mastery {item:{tier:"..."}}
# Progression: Density → Breach → Fire Aspect → Knockback → Looting → Unbreaking/Mending
# Mythical skips Unbreaking/Mending, gets Wind Burst + Smite earlier

# Ench 1+: Density (mace-native primary damage)
execute if score #wm_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:density" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 2+: Breach (mace-native armor-piercing)
execute if score #wm_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:breach" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 3+: Fire Aspect
execute if score #wm_ench_level ec.var matches 3.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fire_aspect" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 4+: Knockback
execute if score #wm_ench_level ec.var matches 4.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:knockback" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 5+: Looting
execute if score #wm_ench_level ec.var matches 5.. store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:looting" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 6.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 7+: Mending (skip for mythical — already unbreakable)
execute if score #wm_ench_level ec.var matches 7.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 6+: Wind Burst (mythical gets at 6 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 6.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:wind_burst" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 7+: Smite (mythical gets at 7 since it skips Unbreaking/Mending)
execute if score #wm_ench_level ec.var matches 7.. if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:smite" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 8+: Wind Burst (exquisite gets at 8 — needs prestige)
execute if score #wm_ench_level ec.var matches 8.. if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:wind_burst" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 9+: Smite (deep prestige — non-mythical)
execute if score #wm_ench_level ec.var matches 9.. unless data storage evercraft:weapon_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:smite" int 1 run scoreboard players get #wm_ench_level ec.var

# Ench 10: Bane of Arthropods (ultimate capstone)
execute if score #wm_ench_level ec.var matches 10 store result entity @e[type=hopper_minecart,tag=wm_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:bane_of_arthropods" int 1 run scoreboard players get #wm_ench_level ec.var
