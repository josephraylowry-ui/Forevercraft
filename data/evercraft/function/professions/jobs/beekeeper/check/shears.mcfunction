#All: (2 ^ 15) - 1 [32767]
#Value: 2 ^ 8 [256]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 16384.. run scoreboard players remove @s more_professions_binary 16384
execute if score @s more_professions_binary matches 8192.. run scoreboard players remove @s more_professions_binary 8192
execute if score @s more_professions_binary matches 4096.. run scoreboard players remove @s more_professions_binary 4096
execute if score @s more_professions_binary matches 2048.. run scoreboard players remove @s more_professions_binary 2048
execute if score @s more_professions_binary matches 1024.. run scoreboard players remove @s more_professions_binary 1024
execute if score @s more_professions_binary matches 512.. run scoreboard players remove @s more_professions_binary 512
execute if score @s more_professions_binary matches ..257 run function evercraft:professions/jobs/beekeeper/set/shears