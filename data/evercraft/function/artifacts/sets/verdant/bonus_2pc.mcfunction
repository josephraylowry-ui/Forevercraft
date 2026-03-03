# Grove 2-Piece Bonus: Nature's Embrace — Saturation I
execute unless entity @s[tag=verdant_2pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Grove 2pc: ",color:"light_purple"},{text:"Nature's Embrace — Saturation I",color:"gray"}]
tag @s add verdant_2pc
effect give @s saturation 3 0 false
