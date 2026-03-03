# Apply enchantment bonuses to treasure spawn chances
# Called when player mines a block that can drop treasure
# This increases the chance scores based on Fortune or Silk Touch enchantment level
# BALANCE UPDATE: Changed from 33/66/100% to 0.5/1/1.5% per enchant level

# Reset bonus multiplier
scoreboard players set @s mt.enchant_bonus 0

# Check for Fortune V (2.5% bonus)
execute if predicate evercraft:treasure/enchantments/fortune_5 run scoreboard players set @s mt.enchant_bonus 4

# Check for Fortune IV (2.0% bonus)
execute if score @s mt.enchant_bonus matches 0 if predicate evercraft:treasure/enchantments/fortune_4 run scoreboard players set @s mt.enchant_bonus 3

# Check for Fortune III (1.5% bonus)
execute if score @s mt.enchant_bonus matches 0 if predicate evercraft:treasure/enchantments/fortune_3 run scoreboard players set @s mt.enchant_bonus 2

# Check for Silk Touch (1.5% bonus)
execute if score @s mt.enchant_bonus matches 0 if predicate evercraft:treasure/enchantments/silk_touch run scoreboard players set @s mt.enchant_bonus 2

# Check for Fortune II (1% bonus)
execute if score @s mt.enchant_bonus matches 0 if predicate evercraft:treasure/enchantments/fortune_2 run scoreboard players set @s mt.enchant_bonus 1

# Check for Fortune I (0.5% bonus)
execute if score @s mt.enchant_bonus matches 0 if predicate evercraft:treasure/enchantments/fortune_1 run scoreboard players set @s mt.enchant_bonus 1

# Apply bonuses to all treasure tier chances if enchantment present
execute if score @s mt.enchant_bonus matches 1.. run function evercraft:treasure/treasure/enchantment_bonus/multiply_chances
