# ID 6 (Phantom): Sneak 5,000 blocks (stat_crouch delta)
scoreboard players operation #delta adv.temp = @s adv.stat_crouch
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 3750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 5000.. run function evercraft:advantage/challenges/complete
