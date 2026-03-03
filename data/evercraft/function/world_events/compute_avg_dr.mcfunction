# World Events — Compute Server Average Dream Rate
# Result: #we_avg_dr ec.var (scaled x10, so DR 15.0 = score 150)

# Count online players
execute store result score #we_player_count ec.var if entity @a

# Early exit if no players
execute unless score #we_player_count ec.var matches 1.. run return 0

# Sum each player's luck attribute * 10
scoreboard players set #we_avg_dr ec.var 0
execute as @a store result score @s ec.temp run attribute @s luck get 10
execute as @a run scoreboard players operation #we_avg_dr ec.var += @s ec.temp

# Divide by player count for average
scoreboard players operation #we_avg_dr ec.var /= #we_player_count ec.var
