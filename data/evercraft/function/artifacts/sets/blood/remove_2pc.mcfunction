# Blood - Remove 2pc bonus
tag @s remove blood_2pc
effect clear @s strength
tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Blood 2pc bonus removed",color:"gray"}]
