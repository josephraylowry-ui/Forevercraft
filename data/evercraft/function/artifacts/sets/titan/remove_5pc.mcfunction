# Tempest - Remove 5pc bonus
tag @s remove titan_5pc
# Downgrade back to Conduit Power only if still 2pc
execute if entity @s[tag=titan_2pc] run effect give @s conduit_power 3 0 false
execute unless entity @s[tag=titan_2pc] run effect clear @s speed
tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Tempest 5pc bonus removed",color:"gray"}]
