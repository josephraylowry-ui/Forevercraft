# ID 15 (Green Thumb): Harvest 1,000 crops (stat_harvest delta)
scoreboard players operation #delta adv.temp = @s adv.stat_harvest
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 1000.. run function evercraft:advantage/challenges/complete
