# Thornheart Bloom — Regen I on natural ground + Dream Rate +1.5 (no poison aura from satchel)
execute if score @s ec.h_regen matches ..1 if block ~ ~-1 ~ #minecraft:dirt run effect give @s regeneration 5 0 false
attribute @s luck modifier add evercraft:thornheart_bloom_luck 1.5 add_value
