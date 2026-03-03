#say trade3
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..4

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/hunter/check/flesh_to_pearl
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/hunter/check/flesh_to_bone
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/hunter/check/flesh_to_blaze_rod
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/hunter/check/blaze_rod_to_emerald
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/hunter/check/flesh_to_rabbit_foot

scoreboard players reset @s more_professions_rng