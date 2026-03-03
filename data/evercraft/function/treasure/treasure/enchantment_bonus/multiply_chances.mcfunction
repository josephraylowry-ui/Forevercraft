# Multiply treasure chances by enchantment bonus
# This creates temporary modified scores for the loot table to use

# Store original chances
scoreboard players operation @s mt.orig_common = @s mt.common_chance
scoreboard players operation @s mt.orig_rare = @s mt.rare_chance
scoreboard players operation @s mt.orig_epic = @s mt.epic_chance
scoreboard players operation @s mt.orig_mythical = @s mt.mythical_chance

# Calculate bonus amounts (base * bonus / 100)
scoreboard players operation @s mt.bonus_common = @s mt.common_chance
scoreboard players operation @s mt.bonus_common *= @s mt.enchant_bonus
scoreboard players operation @s mt.bonus_common /= #100 mt.constant

scoreboard players operation @s mt.bonus_rare = @s mt.rare_chance
scoreboard players operation @s mt.bonus_rare *= @s mt.enchant_bonus
scoreboard players operation @s mt.bonus_rare /= #100 mt.constant

scoreboard players operation @s mt.bonus_epic = @s mt.epic_chance
scoreboard players operation @s mt.bonus_epic *= @s mt.enchant_bonus
scoreboard players operation @s mt.bonus_epic /= #100 mt.constant

scoreboard players operation @s mt.bonus_mythical = @s mt.mythical_chance
scoreboard players operation @s mt.bonus_mythical *= @s mt.enchant_bonus
scoreboard players operation @s mt.bonus_mythical /= #100 mt.constant

# Add bonuses to chances
scoreboard players operation @s mt.common_chance += @s mt.bonus_common
scoreboard players operation @s mt.rare_chance += @s mt.bonus_rare
scoreboard players operation @s mt.epic_chance += @s mt.bonus_epic
scoreboard players operation @s mt.mythical_chance += @s mt.bonus_mythical
