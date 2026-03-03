# Grove 5-Piece Bonus: Bountiful Harvest — Double crop drops
execute unless entity @s[tag=verdant_5pc] run tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Grove 5pc: ",color:"light_purple"},{text:"Bountiful Harvest — Double crop drops",color:"gray"}]
tag @s add verdant_5pc
effect give @s luck 3 4 false
