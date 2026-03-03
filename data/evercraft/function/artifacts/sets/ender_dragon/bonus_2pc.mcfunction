# Ender Dragon 2-Piece Bonus: Dragon Scales — Resistance I
execute unless entity @s[tag=ender_dragon_2pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Ender Dragon 2pc: ",color:"dark_purple"},{text:"Dragon Scales — Resistance I",color:"gray"}]
tag @s add ender_dragon_2pc
execute unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
