#say trade1
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/miner/check/iron
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/miner/check/iron_to_emerald
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/miner/check/coal
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/miner/check/coal_to_emerald
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/miner/check/cobblestone
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/miner/check/cobblestone_to_emerald

scoreboard players reset @s more_professions_rng