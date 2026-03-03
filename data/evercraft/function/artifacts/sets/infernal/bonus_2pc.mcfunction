# Infernal 2-Piece Bonus: Infernal Resilience — Resistance I
execute unless entity @s[tag=infernal_2pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Infernal 2pc: ",color:"red"},{text:"Infernal Resilience — Resistance I",color:"gray"}]
tag @s add infernal_2pc
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
