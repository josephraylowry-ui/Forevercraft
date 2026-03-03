#All: (2 ^ 30) - 1 [1073741823]
#Value: 2 ^ 29 [536870912]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches ..536870911 run function evercraft:professions/jobs/explorer/set/heart_of_the_sea_to_emerald_block