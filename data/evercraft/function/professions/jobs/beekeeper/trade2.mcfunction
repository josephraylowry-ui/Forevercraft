#say trade2
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/3
execute store result score @s more_professions_rng run random value 0..3

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/beekeeper/check/honeycomb
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/beekeeper/check/honeycomb_to_emerald
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/beekeeper/check/campfire

scoreboard players reset @s more_professions_rng