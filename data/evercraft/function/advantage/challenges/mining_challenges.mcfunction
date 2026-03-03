# ID 13 (Deep Core): Mine 5,000 blocks
execute if score @s adv.chal_id matches 13 run scoreboard players operation #delta adv.temp = @s adv.stat_mine
execute if score @s adv.chal_id matches 13 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 13 if score #delta adv.temp matches 3750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 13 if score #delta adv.temp matches 5000.. run function evercraft:advantage/challenges/complete

# ID 14 (Fortunate): Mine 500 ores
execute if score @s adv.chal_id matches 14 run scoreboard players operation #delta adv.temp = @s adv.stat_mine
execute if score @s adv.chal_id matches 14 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 14 if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 14 if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete
