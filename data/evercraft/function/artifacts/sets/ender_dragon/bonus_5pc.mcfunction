# Ender Dragon 5-Piece Bonus: Dragonborn — Strength II + Regeneration I
execute unless entity @s[tag=ender_dragon_5pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Ender Dragon 5pc: ",color:"dark_purple"},{text:"Dragonborn — Strength II + Regeneration I",color:"gray"}]
tag @s add ender_dragon_5pc
execute unless score @s ec.h_str matches 2.. run effect give @s strength 3 1 false
execute unless score @s ec.h_regen matches 2.. run effect give @s regeneration 3 0 false
