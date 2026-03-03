#All: (2 ^ 15) - 1 [32767]
#Value: 2 ^ 14 [16384]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches ..16383 run function evercraft:professions/jobs/beekeeper/set/beehive