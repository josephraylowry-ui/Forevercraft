#All: (2 ^ 30) - 1 [1073741823]
#Value: 2 ^ 25 [33554432]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 536870912.. run scoreboard players remove @s more_professions_binary 536870912
execute if score @s more_professions_binary matches 268435456.. run scoreboard players remove @s more_professions_binary 268435456
execute if score @s more_professions_binary matches 134217728.. run scoreboard players remove @s more_professions_binary 134217728
execute if score @s more_professions_binary matches 67108864.. run scoreboard players remove @s more_professions_binary 67108864
execute if score @s more_professions_binary matches ..33554431 run function evercraft:professions/jobs/hunter/set/ink_to_emerald