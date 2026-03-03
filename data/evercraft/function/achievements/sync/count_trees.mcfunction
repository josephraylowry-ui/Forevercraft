# Count how many advantage trees the player has unlocked (level >= 1)
scoreboard players set @s ach.trees_unlocked 0
execute if score @s adv.agility matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.dexterity matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.evasion matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.stealth matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.vitality matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.taskmaster matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.beastmaster matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.victorian matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.fishing matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.mining matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.gathering matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.blacksmith matches 1.. run scoreboard players add @s ach.trees_unlocked 1
execute if score @s adv.explorer matches 1.. run scoreboard players add @s ach.trees_unlocked 1
