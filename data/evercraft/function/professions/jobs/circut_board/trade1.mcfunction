#say trade1
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/check/redstone_dust
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/check/redstone_torch
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/check/redstone_to_emerald
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/check/lever
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/check/comparator
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/check/button

scoreboard players reset @s more_professions_rng