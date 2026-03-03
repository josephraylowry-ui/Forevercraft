# Tempest - Remove 2pc bonus
tag @s remove titan_2pc
effect clear @s conduit_power
attribute @s luck modifier remove titan_2pc_luck
tellraw @s [{text:"[Artifact Set] ",color:"gold"},{text:"Tempest 2pc bonus removed",color:"gray"}]
