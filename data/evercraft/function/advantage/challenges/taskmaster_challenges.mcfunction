# ID 9 (Grinder): Complete 25 quests (stat_quests delta)
scoreboard players operation #delta adv.temp = @s adv.stat_quests
scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score #delta adv.temp matches 18.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score #delta adv.temp matches 25.. run function evercraft:advantage/challenges/complete
