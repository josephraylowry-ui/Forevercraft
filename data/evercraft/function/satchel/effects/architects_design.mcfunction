# Architect's Design — Night Vision + Speed I + Dream Rate +2.0 (no levitation aura from satchel)
effect give @s night_vision 15 0 false
execute if score @s ec.h_speed matches ..1 run effect give @s speed 5 0 false
attribute @s luck modifier add evercraft:architects_design_luck 2.0 add_value
