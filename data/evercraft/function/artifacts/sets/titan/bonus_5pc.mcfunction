# Tempest 5-Piece Bonus: Riptide Surge — Speed boost
execute unless entity @s[tag=titan_5pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Tempest 5pc: ",color:"light_purple"},{text:"Riptide Surge — Speed I",color:"gray"}]
tag @s add titan_5pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 0 false
