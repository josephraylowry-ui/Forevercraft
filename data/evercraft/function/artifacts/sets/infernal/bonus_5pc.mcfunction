# Infernal 5-Piece Bonus: Infernal Wrath — Strength II (weapon required)
execute unless entity @s[tag=infernal_5pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Infernal 5pc: ",color:"red"},{text:"Infernal Wrath — Strength II",color:"gray"}]
tag @s add infernal_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
