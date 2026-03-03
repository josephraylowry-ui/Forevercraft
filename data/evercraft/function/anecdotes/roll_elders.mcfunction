# Roll 15% chance for Elder's Anecdote
# Called from structure loot systems

# Generate random number 1-100
scoreboard players set @s ec.temp 0
execute store result score @s ec.temp run random value 1..100

# 15% chance (1-15 = success)
execute if score @s ec.temp matches 1..15 run function evercraft:anecdotes/try_give_elders
