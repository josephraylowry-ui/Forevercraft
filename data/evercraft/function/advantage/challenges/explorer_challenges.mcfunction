# ID 17 (Cartographer): Find 10 structure crates (stat_struct delta)
scoreboard players operation #delta adv.temp = @s adv.stat_struct
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 7.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 10.. run function evercraft:advantage/challenges/complete
