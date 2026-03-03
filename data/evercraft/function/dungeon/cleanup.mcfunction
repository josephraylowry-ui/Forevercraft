# Dungeon Instance System — Cleanup
# Remove all dungeon entities and reset state

# Kill all dungeon mobs
kill @e[tag=dg.mob]

# Kill center marker
kill @e[type=marker,tag=dg.center]

# Remove player tag
tag @a[tag=dg.player] remove dg.player

# Reset global state
scoreboard players set #dg_active ec.var 0
scoreboard players set #dg_wave ec.var 0
scoreboard players set #dg_timer ec.var 0
scoreboard players set #dg_type ec.var 0
scoreboard players set #dg_instance ec.var 0
scoreboard players set #dg_difficulty ec.var 0
scoreboard players set #dg_modifier ec.var 0

# Clear actionbar
title @a actionbar {text:""}
