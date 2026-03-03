execute store result score #health mt.const run attribute @s max_health get
scoreboard players operation #health mt.const /= #2 mt.const

execute if score @s mt.compare <= #health mt.const run function evercraft:treasure/items/weapons/sharpened_sword/get_uuid

execute store result score @s mt.compare run data get entity @s Health