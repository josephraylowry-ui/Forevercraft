#say trade2
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/explorer/check/spyglass
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/explorer/check/compass
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/explorer/check/chorus_flower
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/explorer/check/chest_boat
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/explorer/check/boat
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/explorer/check/firework_rocket

scoreboard players reset @s more_professions_rng