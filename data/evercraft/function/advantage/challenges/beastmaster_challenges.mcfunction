# ID 10 (Pack Alpha): Max 3 pets (stat_pets100 >= 3 absolute check)
execute if score @s adv.stat_pets100 matches 2.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.stat_pets100 matches 3.. run function evercraft:advantage/challenges/complete
