execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/14

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/acacia
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/birch
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/crimson
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/dark_oak
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/jungle
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/mangrove
execute if score @s more_professions_rng matches 6 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/oak
execute if score @s more_professions_rng matches 7 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/polished_blackstone
execute if score @s more_professions_rng matches 8 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/spruce
execute if score @s more_professions_rng matches 9 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/stone
execute if score @s more_professions_rng matches 10 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/warped
execute if score @s more_professions_rng matches 11 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/bamboo
execute if score @s more_professions_rng matches 12 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/cherry
execute if score @s more_professions_rng matches 13 run function evercraft:professions/jobs/circut_board/set/variants/pressure_plate/pale_oak

scoreboard players reset @s more_professions_rng