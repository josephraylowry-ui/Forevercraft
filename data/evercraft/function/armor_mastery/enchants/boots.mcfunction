# Boots enchantments — applied to hopper minecart item
# #am_ench_level = effective enchant level (level + prestige, cap 10)
# Tier data in storage evercraft:armor_mastery {item:{tier:"..."}}
# Conflict group: Protection vs Fire/Blast/Projectile Protection
# Also: Depth Strider vs Frost Walker (we use Depth Strider only)

# Ench 1+: Protection
execute if score #am_ench_level ec.var matches 1.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 2+: Feather Falling
execute if score #am_ench_level ec.var matches 2.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:feather_falling" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 3+: Thorns
execute if score #am_ench_level ec.var matches 3.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:thorns" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 4+: Depth Strider
execute if score #am_ench_level ec.var matches 4.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:depth_strider" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 5+: Soul Speed
execute if score #am_ench_level ec.var matches 5.. store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:soul_speed" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 6+: Unbreaking (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 6.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:unbreaking" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 7+: Mending (skip for mythical — already unbreakable)
execute if score #am_ench_level ec.var matches 7.. unless data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:mending" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 6+: Fire Protection (mythical gets this at 6 since it skips Unbreaking/Mending)
execute if score #am_ench_level ec.var matches 6.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fire_protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 7+: Blast Protection (mythical gets this at 7)
execute if score #am_ench_level ec.var matches 7.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:blast_protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 7+: Fire Protection (exquisite gets this at 7 — needs prestige)
execute if score #am_ench_level ec.var matches 7.. if data storage evercraft:armor_mastery {item:{tier:"exquisite"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:fire_protection" int 1 run scoreboard players get #am_ench_level ec.var

# Ench 8+: Projectile Protection (mythical gets this at 8 — needs prestige)
execute if score #am_ench_level ec.var matches 8.. if data storage evercraft:armor_mastery {item:{tier:"mythical"}} store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments"."minecraft:projectile_protection" int 1 run scoreboard players get #am_ench_level ec.var
