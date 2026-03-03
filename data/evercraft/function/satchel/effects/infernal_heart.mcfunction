# Infernal Heart — Fire Resistance + Strength I + Dream Rate +1.5 (no fire aura from satchel)
effect give @s fire_resistance 15 0 false
execute if score @s ec.h_str matches ..1 run effect give @s strength 5 0 false
attribute @s luck modifier add evercraft:infernal_heart_luck 1.5 add_value
