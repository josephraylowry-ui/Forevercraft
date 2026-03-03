#say trade3
#execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/6
execute store result score @s more_professions_rng run random value 0..5

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/check/note_block
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/check/crafter
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/check/observer
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/check/iron_door
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/check/iron_trapdoor
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/check/piston

scoreboard players reset @s more_professions_rng