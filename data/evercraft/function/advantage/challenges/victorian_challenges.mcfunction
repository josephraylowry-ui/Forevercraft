# ID 11 (Slayer): Kill 500 mobs (stat_mobs delta)
scoreboard players operation #delta adv.temp = @s adv.stat_mobs
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete
