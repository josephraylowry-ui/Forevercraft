scoreboard players add .global mt.id 1
execute if score .global mt.id matches 65537.. run scoreboard players set .global mt.id 1
scoreboard players operation @s mt.id = .global mt.id
scoreboard players operation #id mt.id = .global mt.id
execute if score #id mt.id matches 32768.. run scoreboard players set @s mt.bit15 1
execute if score #id mt.id matches 32768.. run scoreboard players remove #id mt.id 32768
execute if score #id mt.id matches 16384.. run scoreboard players set @s mt.bit14 1
execute if score #id mt.id matches 16384.. run scoreboard players remove #id mt.id 16384
execute if score #id mt.id matches 8192.. run scoreboard players set @s mt.bit13 1
execute if score #id mt.id matches 8192.. run scoreboard players remove #id mt.id 8192
execute if score #id mt.id matches 4096.. run scoreboard players set @s mt.bit12 1
execute if score #id mt.id matches 4096.. run scoreboard players remove #id mt.id 4096
execute if score #id mt.id matches 2048.. run scoreboard players set @s mt.bit11 1
execute if score #id mt.id matches 2048.. run scoreboard players remove #id mt.id 2048
execute if score #id mt.id matches 1024.. run scoreboard players set @s mt.bit10 1
execute if score #id mt.id matches 1024.. run scoreboard players remove #id mt.id 1024
execute if score #id mt.id matches 512.. run scoreboard players set @s mt.bit9 1
execute if score #id mt.id matches 512.. run scoreboard players remove #id mt.id 512
execute if score #id mt.id matches 256.. run scoreboard players set @s mt.bit8 1
execute if score #id mt.id matches 256.. run scoreboard players remove #id mt.id 256
execute if score #id mt.id matches 128.. run scoreboard players set @s mt.bit7 1
execute if score #id mt.id matches 128.. run scoreboard players remove #id mt.id 128
execute if score #id mt.id matches 64.. run scoreboard players set @s mt.bit6 1
execute if score #id mt.id matches 64.. run scoreboard players remove #id mt.id 64
execute if score #id mt.id matches 32.. run scoreboard players set @s mt.bit5 1
execute if score #id mt.id matches 32.. run scoreboard players remove #id mt.id 32
execute if score #id mt.id matches 16.. run scoreboard players set @s mt.bit4 1
execute if score #id mt.id matches 16.. run scoreboard players remove #id mt.id 16
execute if score #id mt.id matches 8.. run scoreboard players set @s mt.bit3 1
execute if score #id mt.id matches 8.. run scoreboard players remove #id mt.id 8
execute if score #id mt.id matches 4.. run scoreboard players set @s mt.bit2 1
execute if score #id mt.id matches 4.. run scoreboard players remove #id mt.id 4
execute if score #id mt.id matches 2.. run scoreboard players set @s mt.bit1 1
execute if score #id mt.id matches 2.. run scoreboard players remove #id mt.id 2
execute if score #id mt.id matches 1.. run scoreboard players set @s mt.bit0 1