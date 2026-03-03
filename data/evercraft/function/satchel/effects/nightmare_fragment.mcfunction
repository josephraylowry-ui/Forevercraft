# Nightmare Fragment — Speed I + Invisibility while sneaking + Dream Rate +1.5
execute if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
execute if predicate evercraft:sneaking run effect give @s invisibility 5 0 false
attribute @s luck modifier add evercraft:nightmare_fragment_luck 1.5 add_value
