#All: (2 ^ 15) - 1 [32767]
#Value: 2 ^ 4 [16]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 16384.. run scoreboard players remove @s more_professions_binary 16384
execute if score @s more_professions_binary matches 8192.. run scoreboard players remove @s more_professions_binary 8192
execute if score @s more_professions_binary matches 4096.. run scoreboard players remove @s more_professions_binary 4096
execute if score @s more_professions_binary matches 2048.. run scoreboard players remove @s more_professions_binary 2048
execute if score @s more_professions_binary matches 1024.. run scoreboard players remove @s more_professions_binary 1024
execute if score @s more_professions_binary matches 512.. run scoreboard players remove @s more_professions_binary 512
execute if score @s more_professions_binary matches 256.. run scoreboard players remove @s more_professions_binary 256
execute if score @s more_professions_binary matches 128.. run scoreboard players remove @s more_professions_binary 128
execute if score @s more_professions_binary matches 64.. run scoreboard players remove @s more_professions_binary 64
execute if score @s more_professions_binary matches 32.. run scoreboard players remove @s more_professions_binary 32
execute if score @s more_professions_binary matches ..15 run function evercraft:professions/jobs/beekeeper/set/honeycomb_to_emerald