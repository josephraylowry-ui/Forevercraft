#say trade5
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..6

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/explorer/check/diamond_horse_armor
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/explorer/check/end_stone_to_emerald
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/explorer/check/chorus_fruit_to_emerald
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/explorer/check/chorus_flower_to_emerald
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/explorer/check/amethyst_block_to_emerald
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/explorer/check/heart_of_the_sea_to_emerald_block
execute if score @s more_professions_rng matches 6 run function evercraft:professions/jobs/explorer/check/sponge

scoreboard players reset @s more_professions_rng