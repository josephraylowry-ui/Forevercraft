# Harvest Festival — Tick (1s)
# Sync modifiers for new players, visual effects

# Apply modifier and scoreboard flag to players who may have joined
execute as @a run attribute @s luck modifier remove ec_cal_harvest
execute as @a run attribute @s luck modifier add ec_cal_harvest 1.5 add_value
scoreboard players set @a ec.hf_active 1

# Green particles near players (every ~5 seconds to save perf)
scoreboard players add #cal_harvest_fx ec.var 1
execute if score #cal_harvest_fx ec.var matches 5.. run scoreboard players set #cal_harvest_fx ec.var 0
execute if score #cal_harvest_fx ec.var matches 0 as @a at @s run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.05 8
