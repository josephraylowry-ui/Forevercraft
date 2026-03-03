#All: (2 ^ 15) - 1 [32767]
#Value: 2 ^ 12 [4096]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 16384.. run scoreboard players remove @s more_professions_binary 16384
execute if score @s more_professions_binary matches 8192.. run scoreboard players remove @s more_professions_binary 8192
execute if score @s more_professions_binary matches ..4095 run function evercraft:professions/jobs/beekeeper/set/honey_block