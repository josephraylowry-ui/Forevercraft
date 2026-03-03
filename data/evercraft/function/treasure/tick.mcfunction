# Mine Treasure - Tick
# Early exit if no players online
execute unless entity @a run return 0

# OPT: Treasure head scan every 4 ticks (was per-player cross-product every tick)
# Items persist as entities, 0.2s max delay is unnoticeable for treasure spawning
scoreboard players add #mt_head_poll ec.var 1
execute if score #mt_head_poll ec.var matches 4.. run scoreboard players set #mt_head_poll ec.var 0
execute if score #mt_head_poll ec.var matches 0 as @a at @s as @e[type=item,distance=..20] at @s if items entity @s contents minecraft:player_head[minecraft:custom_data~{treasure:1b}] run function evercraft:treasure/treasure/handler

# execute as every player
execute as @a at @s run function evercraft:treasure/tick_player

# execute as every entity (only if tagged entities exist)
execute if entity @e[type=#evercraft:treasure/targets,tag=mt.entity,limit=1] as @e[type=#evercraft:treasure/targets,tag=mt.entity] at @s run function evercraft:treasure/tick_entity

# Ghost cleanup: kill orphaned item_display passengers that lost their mt.treasure_container armor_stand
execute as @e[type=item_display,tag=mt.marker] at @s unless entity @e[type=armor_stand,tag=mt.treasure_container,distance=..1] run kill @s