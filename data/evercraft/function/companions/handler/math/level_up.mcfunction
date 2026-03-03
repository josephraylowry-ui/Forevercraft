scoreboard players operation #current_exp Pets.EXP -= #exp_to_next_level Pets.EXP

scoreboard players set #exp_to_next_level Pets.Calc 2
scoreboard players operation #next_level Pets.Calc = #current_level Pets.EXP
scoreboard players add #next_level Pets.Calc 1

scoreboard players operation #exp_to_next_level Pets.Calc *= #next_level Pets.Calc
scoreboard players operation #exp_to_next_level Pets.Calc *= #next_level Pets.Calc

scoreboard players set #term2 Pets.Calc 4
scoreboard players operation #term2 Pets.Calc *= #next_level Pets.Calc

scoreboard players operation #exp_to_next_level Pets.Calc += #term2 Pets.Calc

scoreboard players operation #exp_to_next_level Pets.Calc += #10 Pets.Calc

scoreboard players operation #exp_to_next_level Pets.EXP = #exp_to_next_level Pets.Calc
scoreboard players add #current_level Pets.EXP 1

execute if score #current_exp Pets.EXP >= #exp_to_next_level Pets.EXP run function evercraft:companions/handler/math/level_up