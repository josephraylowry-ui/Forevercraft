# Ore Node: Begin 3-second mining progress
# Run as the player who clicked, at player position

# If already mining another node, ignore
execute if score @s ec.pr_picking matches 1 run return 0

# Require iron pickaxe or better in inventory
execute unless items entity @s container.* minecraft:iron_pickaxe unless items entity @s container.* minecraft:diamond_pickaxe unless items entity @s container.* minecraft:netherite_pickaxe run tellraw @s [{text:"You need an iron pickaxe or better to mine ore nodes.",color:"red"}]
execute unless items entity @s container.* minecraft:iron_pickaxe unless items entity @s container.* minecraft:diamond_pickaxe unless items entity @s container.* minecraft:netherite_pickaxe run return 0

# Mark player as mining
scoreboard players set @s ec.pr_picking 1
scoreboard players set @s ec.pr_progress 0

# Store node position for range checking during mining
execute store result score @s ec.pr_sx run data get entity @e[type=marker,tag=ec.prospect_data,distance=..5,limit=1,sort=nearest] Pos[0] 1
execute store result score @s ec.pr_sy run data get entity @e[type=marker,tag=ec.prospect_data,distance=..5,limit=1,sort=nearest] Pos[1] 1
execute store result score @s ec.pr_sz run data get entity @e[type=marker,tag=ec.prospect_data,distance=..5,limit=1,sort=nearest] Pos[2] 1

# Show boss bar
bossbar set evercraft:prospect_mine value 0
bossbar set evercraft:prospect_mine visible true
bossbar set evercraft:prospect_mine players @s

# Start sound
playsound minecraft:block.stone.hit master @s ~ ~ ~ 0.6 0.8
