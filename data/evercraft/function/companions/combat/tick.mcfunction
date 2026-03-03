# Pet Combat System — 1s Self-Scheduling Tick
# Cooldown decrement is per-tick in main tick.mcfunction

# Clean up stale pet_hit tags (mob survived past 10 seconds)
scoreboard players add #pc_cleanup ec.var 1
execute if score #pc_cleanup ec.var matches 10.. as @e[tag=pc.pet_hit] run tag @s remove pc.pet_hit
execute if score #pc_cleanup ec.var matches 10.. run scoreboard players set #pc_cleanup ec.var 0

# Re-schedule
schedule function evercraft:companions/combat/tick 1s replace
