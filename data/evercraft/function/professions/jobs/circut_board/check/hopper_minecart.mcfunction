#All: (2 ^ 30) - 1 [1073741823]
#Value: 2 ^ 22 [4194304]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 536870912.. run scoreboard players remove @s more_professions_binary 536870912
execute if score @s more_professions_binary matches 268435456.. run scoreboard players remove @s more_professions_binary 268435456
execute if score @s more_professions_binary matches 134217728.. run scoreboard players remove @s more_professions_binary 134217728
execute if score @s more_professions_binary matches 67108864.. run scoreboard players remove @s more_professions_binary 67108864
execute if score @s more_professions_binary matches 33554432.. run scoreboard players remove @s more_professions_binary 33554432
execute if score @s more_professions_binary matches 16777216.. run scoreboard players remove @s more_professions_binary 16777216
execute if score @s more_professions_binary matches 8388608.. run scoreboard players remove @s more_professions_binary 8388608
execute if score @s more_professions_binary matches ..4194303 run function evercraft:professions/jobs/circut_board/set/hopper_minecart