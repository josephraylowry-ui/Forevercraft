# Ore Node: Per-tick mining progress
# Run as player with active mining, at player position

# --- Range check: cancel if too far from node ---
execute store result score #pr_px ec.temp run data get entity @s Pos[0] 1
execute store result score #pr_py ec.temp run data get entity @s Pos[1] 1
execute store result score #pr_pz ec.temp run data get entity @s Pos[2] 1
scoreboard players operation #pr_px ec.temp -= @s ec.pr_sx
scoreboard players operation #pr_py ec.temp -= @s ec.pr_sy
scoreboard players operation #pr_pz ec.temp -= @s ec.pr_sz
# Absolute values
execute if score #pr_px ec.temp matches ..-1 run scoreboard players operation #pr_px ec.temp *= #-1 ec.const
execute if score #pr_py ec.temp matches ..-1 run scoreboard players operation #pr_py ec.temp *= #-1 ec.const
execute if score #pr_pz ec.temp matches ..-1 run scoreboard players operation #pr_pz ec.temp *= #-1 ec.const
# Manhattan distance
scoreboard players operation #pr_px ec.temp += #pr_py ec.temp
scoreboard players operation #pr_px ec.temp += #pr_pz ec.temp
# Cancel if Manhattan distance > 4 blocks
execute if score #pr_px ec.temp matches 5.. run return run function evercraft:prospect/cancel_mine

# --- Check node still exists ---
execute unless entity @e[type=marker,tag=ec.prospect_data,distance=..8] run return run function evercraft:prospect/cancel_mine

# --- Increment progress ---
scoreboard players add @s ec.pr_progress 1

# --- Update boss bar ---
execute store result bossbar evercraft:prospect_mine value run scoreboard players get @s ec.pr_progress

# --- Periodic audio feedback ---
execute if score @s ec.pr_progress matches 15 run playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 1.0
execute if score @s ec.pr_progress matches 30 run playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 1.2
execute if score @s ec.pr_progress matches 45 run playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 1.4

# --- Complete at 60 ticks (3 seconds) ---
execute if score @s ec.pr_progress matches 60.. run function evercraft:prospect/complete_mine
