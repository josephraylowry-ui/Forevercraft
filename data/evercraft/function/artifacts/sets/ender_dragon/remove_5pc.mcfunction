# Ender Dragon - Remove 5pc bonus
tag @s remove ender_dragon_5pc
# Downgrade: if still 2pc, keep Resistance I
execute unless entity @s[tag=ender_dragon_2pc] run effect clear @s resistance
effect clear @s strength
effect clear @s regeneration
tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Ender Dragon 5pc bonus removed",color:"gray"}]
