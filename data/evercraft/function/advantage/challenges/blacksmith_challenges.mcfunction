# ID 16 (Iron Chef): Smelt 500 items (stat_smelt delta)
scoreboard players operation #delta adv.temp = @s adv.stat_smelt
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete
