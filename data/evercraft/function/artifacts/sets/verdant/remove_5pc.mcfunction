# Grove - Remove 5pc bonus
tag @s remove verdant_5pc
# Downgrade back to Saturation I if still 2pc
execute if entity @s[tag=verdant_2pc] run effect give @s saturation 3 0 false
execute unless entity @s[tag=verdant_2pc] run effect clear @s saturation
effect clear @s luck
tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Grove 5pc bonus removed",color:"gray"}]
