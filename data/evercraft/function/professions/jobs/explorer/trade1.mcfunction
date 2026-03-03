#say trade1
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..6

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/explorer/check/amethyst
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/explorer/check/big_dripleaf
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/explorer/check/end_stone
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/explorer/check/chorus_fruit
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/explorer/check/warped_fungus_on_a_stick
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/explorer/check/powder_snow_bucket
execute if score @s more_professions_rng matches 6 run function evercraft:professions/jobs/explorer/check/buy_saddle

scoreboard players reset @s more_professions_rng