# ID 7 (Tank): Take 200 HP damage (stat_hit delta)
execute if score @s adv.chal_id matches 7 run scoreboard players operation #delta adv.temp = @s adv.stat_hit
execute if score @s adv.chal_id matches 7 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 7 if score #delta adv.temp matches 150.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 7 if score #delta adv.temp matches 200.. run function evercraft:advantage/challenges/complete

# ID 8 (Deathless): Don't die for 7 days (604800 seconds)
# Increment per second. Death resets via a death detection hook (or deathCount check)
execute if score @s adv.chal_id matches 8 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 8 if score @s adv.chal_prog matches 453600.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 8 if score @s adv.chal_prog matches 604800.. run function evercraft:advantage/challenges/complete
