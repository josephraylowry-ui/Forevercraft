# Adjust Well-Fed timer by Culinary tree bonus + Master Chef
# Called after setting base Well-Fed timer in apply functions
# P3 Master Chef: doubles all cooking timers
# Culinary level bonus: extends by ec.ck_bonus_pct %

# Master Chef (P3): Double all cooking timers
execute if score @s adv.pa_culi3 matches 1 run scoreboard players operation @s ec.ck_wellfed *= #2 adv.temp
execute if score @s adv.pa_culi3 matches 1 if score @s ec.ck_fortune matches 1.. run scoreboard players operation @s ec.ck_fortune *= #2 adv.temp

# Skip percentage bonus if no bonus_pct
execute unless score @s ec.ck_bonus_pct matches 1.. run return 0

# Extend Well-Fed timer: wellfed += wellfed * bonus_pct / 100
scoreboard players operation #bonus_ticks adv.temp = @s ec.ck_wellfed
scoreboard players operation #bonus_ticks adv.temp *= @s ec.ck_bonus_pct
scoreboard players operation #bonus_ticks adv.temp /= #100 adv.temp
scoreboard players operation @s ec.ck_wellfed += #bonus_ticks adv.temp

# Extend Fortune timer if active
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation #bonus_ft adv.temp = @s ec.ck_fortune
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation #bonus_ft adv.temp *= @s ec.ck_bonus_pct
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation #bonus_ft adv.temp /= #100 adv.temp
execute if score @s ec.ck_fortune matches 1.. run scoreboard players operation @s ec.ck_fortune += #bonus_ft adv.temp
