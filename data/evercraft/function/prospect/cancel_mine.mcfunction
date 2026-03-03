# Ore Node: Cancel active mining (moved too far)
# Run as player

bossbar set evercraft:prospect_mine visible false
scoreboard players set @s ec.pr_picking 0
scoreboard players set @s ec.pr_progress 0
tellraw @s [{text:"[Prospecting] ",color:"white"},{text:"You moved too far away...",color:"gray","italic":true}]
playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 0.6
