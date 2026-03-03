summon snowball ~ ~ ~ {motion:[0.0,4.0,0.0],Tags:["mt.magic_shroom"],item:{id:"minecraft:red_mushroom",count:1}}

ride @s mount @e[type=snowball,tag=mt.magic_shroom,distance=..1,limit=1]

tellraw @s ["",{text:"ARISE AGAIN DO NOT FOR THE LOVE OF GOD DO NOT PRESS SHIFT OH GOD OH NO!",color:"red"}]

advancement revoke @s only evercraft:treasure/items/food/shroom_milk