# Companion Memories — Apply Bond XP Bonus
# Called after relationship XP gain to apply memory-based multiplier
# Run as: player with active pet
# Reads #feedRP Pets.Calc (the RP being added), modifies it

execute unless entity @s[tag=Pets.ActivePet] run return 0

# Get memory count
function evercraft:companions/memories/get_count

# 0-4 memories = no bonus (1.0x)
execute if score #mem_count Pets.Calc matches ..4 run return 0

# 5-7 memories = 1.1x (add 10%)
execute if score #mem_count Pets.Calc matches 5..7 run scoreboard players operation #mem_bonus Pets.Calc = #feedRP Pets.Calc
execute if score #mem_count Pets.Calc matches 5..7 run scoreboard players operation #mem_bonus Pets.Calc /= #10 Pets.Calc
execute if score #mem_count Pets.Calc matches 5..7 run scoreboard players operation #feedRP Pets.Calc += #mem_bonus Pets.Calc

# 8-9 memories = 1.15x (add 15%)
execute if score #mem_count Pets.Calc matches 8..9 run scoreboard players operation #mem_bonus Pets.Calc = #feedRP Pets.Calc
execute if score #mem_count Pets.Calc matches 8..9 run scoreboard players operation #mem_bonus Pets.Calc *= #15 Pets.Calc
execute if score #mem_count Pets.Calc matches 8..9 run scoreboard players operation #mem_bonus Pets.Calc /= #100 Pets.Calc
execute if score #mem_count Pets.Calc matches 8..9 run scoreboard players operation #feedRP Pets.Calc += #mem_bonus Pets.Calc

# 10 memories = 1.25x (add 25%)
execute if score #mem_count Pets.Calc matches 10.. run scoreboard players operation #mem_bonus Pets.Calc = #feedRP Pets.Calc
execute if score #mem_count Pets.Calc matches 10.. run scoreboard players operation #mem_bonus Pets.Calc /= #4 Pets.Calc
execute if score #mem_count Pets.Calc matches 10.. run scoreboard players operation #feedRP Pets.Calc += #mem_bonus Pets.Calc
