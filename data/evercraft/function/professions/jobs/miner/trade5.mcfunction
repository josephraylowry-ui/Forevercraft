#say trade5
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/miner/check/redstone_block_to_emerald
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/miner/check/iron_block_to_emerald
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/miner/check/copper_block_to_emerald
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/miner/check/gold_block_to_emerald
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/miner/check/diamond_block_to_emerald
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/miner/check/lapis_block_to_emerald

scoreboard players reset @s more_professions_rng