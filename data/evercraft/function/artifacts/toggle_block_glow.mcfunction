# Toggle block/structure highlighting from artifacts (default: ON)
execute unless score @s ec.block_glow matches 0.. run scoreboard players set @s ec.block_glow 1

execute store success score #temp ec.block_glow if score @s ec.block_glow matches 0
execute if score #temp ec.block_glow matches 1 run scoreboard players set @s ec.block_glow 1
execute if score #temp ec.block_glow matches 1 run tellraw @s [{text:"[Artifacts] ",color:"gold"},{text:"Block Vision: ",color:"gray"},{text:"ENABLED",color:"green",bold:true}]
execute if score #temp ec.block_glow matches 0 run scoreboard players set @s ec.block_glow 0
execute if score #temp ec.block_glow matches 0 run tellraw @s [{text:"[Artifacts] ",color:"gold"},{text:"Block Vision: ",color:"gray"},{text:"DISABLED",color:"red",bold:true}]
