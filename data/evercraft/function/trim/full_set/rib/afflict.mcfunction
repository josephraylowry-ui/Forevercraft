effect give @s wither 10 0 false
execute if entity @s[type=player] at @s unless block ~ ~ ~ fire run summon small_fireball ~ ~2 ~ {acceleration_power:[0.0,-10000000.0,0.0]}
execute unless entity @s[type=player] run data merge entity @s {Fire:140s}