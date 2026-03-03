# Restore original treasure chances after loot roll
# Called after treasure has been determined to reset values

# Only restore if bonus was applied
execute if score @s mt.enchant_bonus matches 1.. run scoreboard players operation @s mt.common_chance = @s mt.orig_common
execute if score @s mt.enchant_bonus matches 1.. run scoreboard players operation @s mt.rare_chance = @s mt.orig_rare
execute if score @s mt.enchant_bonus matches 1.. run scoreboard players operation @s mt.epic_chance = @s mt.orig_epic
execute if score @s mt.enchant_bonus matches 1.. run scoreboard players operation @s mt.mythical_chance = @s mt.orig_mythical

# Reset bonus
scoreboard players set @s mt.enchant_bonus 0
