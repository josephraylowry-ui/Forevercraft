execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/14

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/circut_board/set/variants/button/acacia
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/circut_board/set/variants/button/birch
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/circut_board/set/variants/button/crimson
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/circut_board/set/variants/button/dark_oak
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/circut_board/set/variants/button/jungle
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/circut_board/set/variants/button/mangrove
execute if score @s more_professions_rng matches 6 run function evercraft:professions/jobs/circut_board/set/variants/button/oak
execute if score @s more_professions_rng matches 7 run function evercraft:professions/jobs/circut_board/set/variants/button/polished_blackstone
execute if score @s more_professions_rng matches 8 run function evercraft:professions/jobs/circut_board/set/variants/button/spruce
execute if score @s more_professions_rng matches 9 run function evercraft:professions/jobs/circut_board/set/variants/button/stone
execute if score @s more_professions_rng matches 10 run function evercraft:professions/jobs/circut_board/set/variants/button/warped
execute if score @s more_professions_rng matches 11 run function evercraft:professions/jobs/circut_board/set/variants/button/bamboo
execute if score @s more_professions_rng matches 12 run function evercraft:professions/jobs/circut_board/set/variants/button/cherry
execute if score @s more_professions_rng matches 13 run function evercraft:professions/jobs/circut_board/set/variants/button/pale_oak

scoreboard players reset @s more_professions_rng