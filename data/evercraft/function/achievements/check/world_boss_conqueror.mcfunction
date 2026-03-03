# World Boss Conqueror — Check if player has killed all 11 unique bosses
# Run as the player (pre-filtered: boss_kills >= 11, advancement not yet earned)

# Count how many unique bosses have been killed at least once
scoreboard players set @s ach.boss_unique 0
execute if score @s wb.k1 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k2 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k3 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k4 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k5 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k6 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k7 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k8 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k9 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k10 matches 1.. run scoreboard players add @s ach.boss_unique 1
execute if score @s wb.k11 matches 1.. run scoreboard players add @s ach.boss_unique 1

# If all 11 unique bosses killed, grant advancement
execute if score @s ach.boss_unique matches 11.. run advancement grant @s only evercraft:alternate/combat/bosses/world_boss_conqueror
