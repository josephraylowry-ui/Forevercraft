# Dragonmaster 5-Piece Bonus: Dragon's Fury — Strength II (weapon required)
execute unless entity @s[tag=dragonmaster_5pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Dragonmaster 5pc: ",color:"light_purple"},{text:"Dragon's Fury — Strength II",color:"gray"}]
tag @s add dragonmaster_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
