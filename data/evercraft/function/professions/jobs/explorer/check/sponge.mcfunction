# Check for sponge trade
# Value: 2 ^ 27 [134217728]

scoreboard players operation @s more_professions_binary = @s more_professions_offers
execute if score @s more_professions_binary matches 536870912.. run scoreboard players remove @s more_professions_binary 536870912
execute if score @s more_professions_binary matches 268435456.. run scoreboard players remove @s more_professions_binary 268435456
execute if score @s more_professions_binary matches ..134217727 run function evercraft:professions/jobs/explorer/set/sponge
