# Dragonmaster 2-Piece Bonus: Dragon's Blood — Strength I
execute unless entity @s[tag=dragonmaster_2pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Dragonmaster 2pc: ",color:"light_purple"},{text:"Dragon's Blood — Strength I",color:"gray"}]
tag @s add dragonmaster_2pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 0 false
