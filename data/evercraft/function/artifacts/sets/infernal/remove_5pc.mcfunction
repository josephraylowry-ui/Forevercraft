# Infernal - Remove 5pc bonus
tag @s remove infernal_5pc
# Downgrade: if still 2pc, keep Resistance I
execute unless entity @s[tag=infernal_2pc] run effect clear @s resistance
effect clear @s strength
tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Infernal 5pc bonus removed",color:"gray"}]
