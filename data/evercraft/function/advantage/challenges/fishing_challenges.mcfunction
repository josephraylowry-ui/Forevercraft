# ID 12 (Perfect Cast): Catch 100 fish
scoreboard players operation #delta adv.temp = @s adv.stat_fish
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 75.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 100.. run function evercraft:advantage/challenges/complete
