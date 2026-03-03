#say trade4
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/explorer/check/tadpole_bucket
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/explorer/check/wolf_armor
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/explorer/check/dragon_breath
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/explorer/check/phantom_membrane
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/explorer/check/iron_horse_armor
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/explorer/check/golden_horse_armor

scoreboard players reset @s more_professions_rng