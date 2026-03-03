# ID 3 (Marksman): 50 critical hits (stat_hit delta)
scoreboard players operation #delta adv.temp = @s adv.stat_hit
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 50.. run function evercraft:advantage/challenges/complete
