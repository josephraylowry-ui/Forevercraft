# Apply relationship multiplier as attribute modifier
# Run as player

# Remove old modifier first
attribute @s attack_damage modifier remove evercraft:companions/relationship_bonus

# Calculate multiplier as decimal (110 -> 0.10, 150 -> 0.50)
# This is additive bonus percentage
scoreboard players operation #bonus Pets.Calc = #rel_mult Pets.Calc
scoreboard players remove #bonus Pets.Calc 100

# Apply modifier based on level
# Level 1: +10% (0.10)
execute if score @s Pets.RelLevel matches 1 run attribute @s attack_damage modifier add evercraft:companions/relationship_bonus 0.10 add_multiplied_base

# Level 2: +20% (0.20)
execute if score @s Pets.RelLevel matches 2 run attribute @s attack_damage modifier add evercraft:companions/relationship_bonus 0.20 add_multiplied_base

# Level 3: +30% (0.30)
execute if score @s Pets.RelLevel matches 3 run attribute @s attack_damage modifier add evercraft:companions/relationship_bonus 0.30 add_multiplied_base

# Level 4: +40% (0.40)
execute if score @s Pets.RelLevel matches 4 run attribute @s attack_damage modifier add evercraft:companions/relationship_bonus 0.40 add_multiplied_base

# Level 5: +50% (0.50)
execute if score @s Pets.RelLevel matches 5 run attribute @s attack_damage modifier add evercraft:companions/relationship_bonus 0.50 add_multiplied_base
