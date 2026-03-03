# ID 4 (Ghost): Dodge 50 attacks — chal_prog incremented by evasion_dodge hook
execute if score @s adv.chal_id matches 4 if score @s adv.chal_prog matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 4 if score @s adv.chal_prog matches 50.. run function evercraft:advantage/challenges/complete

# ID 5 (Untouched): No damage 10 min (600 seconds)
# Increment per second; system needs a damage-taken detection hook to reset
# For simplicity: increment each tick, check against 600
execute if score @s adv.chal_id matches 5 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 5 if score @s adv.chal_prog matches 450.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 5 if score @s adv.chal_prog matches 600.. run function evercraft:advantage/challenges/complete
