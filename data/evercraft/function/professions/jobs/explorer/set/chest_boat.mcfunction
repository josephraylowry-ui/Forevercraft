execute store result score @s more_professions_rng run loot spawn ~ -1000 ~ loot evercraft:professions/random/10

execute if score @s more_professions_rng matches 0 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/acacia
execute if score @s more_professions_rng matches 1 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/bamboo
execute if score @s more_professions_rng matches 2 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/birch
execute if score @s more_professions_rng matches 3 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/cherry
execute if score @s more_professions_rng matches 4 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/dark_oak
execute if score @s more_professions_rng matches 5 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/jungle
execute if score @s more_professions_rng matches 6 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/mangrove
execute if score @s more_professions_rng matches 7 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/oak
execute if score @s more_professions_rng matches 8 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/pale_oak
execute if score @s more_professions_rng matches 9 run function evercraft:professions/jobs/explorer/set/variants/chest_boat/spruce

scoreboard players reset @s more_professions_rng