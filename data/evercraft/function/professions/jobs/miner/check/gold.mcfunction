#All: (2 ^ 30) - 1 [1073741823]
#Value: 2 ^ 10 [1024]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 536870912.. run scoreboard players remove @s more_professions_binary 536870912
execute if score @s more_professions_binary matches 268435456.. run scoreboard players remove @s more_professions_binary 268435456
execute if score @s more_professions_binary matches 134217728.. run scoreboard players remove @s more_professions_binary 134217728
execute if score @s more_professions_binary matches 67108864.. run scoreboard players remove @s more_professions_binary 67108864
execute if score @s more_professions_binary matches 33554432.. run scoreboard players remove @s more_professions_binary 33554432
execute if score @s more_professions_binary matches 16777216.. run scoreboard players remove @s more_professions_binary 16777216
execute if score @s more_professions_binary matches 8388608.. run scoreboard players remove @s more_professions_binary 8388608
execute if score @s more_professions_binary matches 4194304.. run scoreboard players remove @s more_professions_binary 4194304
execute if score @s more_professions_binary matches 2097152.. run scoreboard players remove @s more_professions_binary 2097152
execute if score @s more_professions_binary matches 1048576.. run scoreboard players remove @s more_professions_binary 1048576
execute if score @s more_professions_binary matches 524288.. run scoreboard players remove @s more_professions_binary 524288
execute if score @s more_professions_binary matches 262144.. run scoreboard players remove @s more_professions_binary 262144
execute if score @s more_professions_binary matches 131072.. run scoreboard players remove @s more_professions_binary 131072
execute if score @s more_professions_binary matches 65536.. run scoreboard players remove @s more_professions_binary 65536
execute if score @s more_professions_binary matches 32768.. run scoreboard players remove @s more_professions_binary 32768
execute if score @s more_professions_binary matches 16384.. run scoreboard players remove @s more_professions_binary 16384
execute if score @s more_professions_binary matches 8192.. run scoreboard players remove @s more_professions_binary 8192
execute if score @s more_professions_binary matches 4096.. run scoreboard players remove @s more_professions_binary 4096
execute if score @s more_professions_binary matches 2048.. run scoreboard players remove @s more_professions_binary 2048
execute if score @s more_professions_binary matches ..1023 run function evercraft:professions/jobs/miner/set/gold