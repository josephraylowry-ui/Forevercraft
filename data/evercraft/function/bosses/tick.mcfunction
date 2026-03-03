# World Boss System — 1s Self-Schedule Tick
schedule function evercraft:bosses/tick 1s replace

# Boss Catalog trigger check
execute as @a[scores={wb.catalog=1..}] run function evercraft:bosses/catalog/display
scoreboard players set @a[scores={wb.catalog=1..}] wb.catalog 0
scoreboard players enable @a wb.catalog

# Natural spawn check — runs when no boss is active (7 in-game day timer)
execute unless score #wb_active ec.var matches 1 run function evercraft:bosses/natural/check

# Early exit if no boss active
execute unless score #wb_active ec.var matches 1 run return 0

# Check boss entity still exists — if not, cleanup (escaped/glitched/killed by environment)
execute unless entity @e[type=!player,tag=wb.boss,limit=1] run function evercraft:bosses/cleanup
execute unless score #wb_active ec.var matches 1 run return 0

# Increment fight timer
scoreboard players add #wb_timer ec.var 1

# Despawn warnings and timeout
execute if score #wb_timer ec.var matches 720 run tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss grows restless... 3 minutes remaining!",color:"gray"}]
execute if score #wb_timer ec.var matches 840 run tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The boss is fading... 1 minute remaining!",color:"gray"}]
execute if score #wb_timer ec.var matches 900 run function evercraft:bosses/despawn
execute unless score #wb_active ec.var matches 1 run return 0

# Skip phase/ability checks while boss is initializing (waiting for sync_hp to heal to full)
execute if entity @e[tag=wb.boss,tag=wb.initializing] run return 0

# Phase check — read boss HP and compare to thresholds
execute as @e[type=!player,tag=wb.boss,limit=1] at @s run function evercraft:bosses/phase/check

# Ability dispatch — route to boss-specific ability function
execute as @e[type=!player,tag=wb.boss,limit=1] at @s run function evercraft:bosses/abilities/tick

# Anti-range check — escalating debuffs on participants who are too far from the boss
execute at @e[type=!player,tag=wb.boss,limit=1] run function evercraft:bosses/anti_range/tick

# Update bossbar player list (only players within 100 blocks of boss)
execute at @e[type=!player,tag=wb.boss,limit=1] run bossbar set evercraft:world_boss players @a[distance=..100]

# Kill distant minions (too far from boss = lost)
execute at @e[type=!player,tag=wb.boss,limit=1] run kill @e[tag=wb.minion,distance=150..]
