# Chestplate enchantments — applied to hopper minecart item
# #am_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:armor_mastery {item:{tier:"..."}}
# Conflict group: Protection vs Fire/Blast/Projectile Protection

# Ench 1+: Protection
execute if score #am_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 2+: Thorns
execute if score #am_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:thorns" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 3+: Unbreaking (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 3.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 4+: Mending (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 4.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 3+: Fire Protection (mythical gets this at 3 since it skips Unbreaking/Mending)
execute if score #am_ench_level ec.var matches 3.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fire_protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 4+: Blast Protection (mythical gets this at 4)
execute if score #am_ench_level ec.var matches 4.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:blast_protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 5+: Projectile Protection (mythical gets this at 5)
execute if score #am_ench_level ec.var matches 5.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:projectile_protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 5+: Fire Protection (exquisite gets this at 5 — needs prestige)
execute if score #am_ench_level ec.var matches 5.. if data storage evercraft:armor_mastery {item:{tier:"exquisite"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fire_protection" int 1 run scoreboard players get #am_ench_level ec.var
