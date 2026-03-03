execute if data storage evercraft:companions uninstalled run return fail
execute unless data storage evercraft:companions constants in overworld unless block 0 -63 0 barrel{lock:{items:"minecraft:command_block"}} run return run schedule function evercraft:companions/load 1t

execute as @a at @s run function evercraft:companions/handler/player/main

function evercraft:companions/handler/schedule/timer

# --------------------------------------------------------------------------------- #

# Companion Memories — periodic checks every 5s (biome, depth, dimension, hours)
execute store result score #gt_mem ec.temp run time query gametime
scoreboard players operation #gt_mem ec.temp %= #100 Pets.Calc
execute if score #gt_mem ec.temp matches 0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/memories/tick_checks
execute if score #gt_mem ec.temp matches 0 as @a[tag=Pets.ActivePet] run function evercraft:companions/memories/tick_hours

# Companion Rivalry — check every 20s (gametime % 400)
execute store result score #gt_rival ec.temp run time query gametime
scoreboard players operation #gt_rival ec.temp %= #400 Pets.Calc
execute if score #gt_rival ec.temp matches 0 as @a[tag=Pets.ActivePet] at @s run function evercraft:companions/rivalry/check

execute as @e[type=chest_minecart, tag=Pets.Invisible] run function evercraft:companions/handler/minecarts/invisible_minecarts