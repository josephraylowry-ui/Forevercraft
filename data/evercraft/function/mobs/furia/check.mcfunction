# Check for new mobs to convert to Furia
# Runs every second, base 30% spawn rate (scales with DR), 2.5min cooldown

# Cooldown management (decrements 1 per second) — skipped in debug boost mode
execute unless score #debug_boost ec.debug matches 1 if score #global furia.cooldown matches 1.. run scoreboard players remove #global furia.cooldown 1

# If on cooldown (and not in debug mode), tag unprocessed mobs so they don't pile up, then skip
execute unless score #debug_boost ec.debug matches 1 if score #global furia.cooldown matches 1.. run tag @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,limit=50] add ec.furia.processed
execute unless score #debug_boost ec.debug matches 1 if score #global furia.cooldown matches 1.. run schedule function evercraft:mobs/furia/check 1s
execute unless score #debug_boost ec.debug matches 1 if score #global furia.cooldown matches 1.. run return 0

# === DEBUG BOOST: 100% furia spawn on every unprocessed mob ===
execute if score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.furia,tag=!ec.patron,limit=1,sort=random] at @s run function evercraft:mobs/furia/roll_tier

# DR-aware spawn chance (handles new moon internally, scales 30%-60% based on nearest player DR)
execute unless score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.patron,limit=1,sort=random] at @s run function evercraft:mobs/furia/dr_chance_check

# Depth Spawn Scaling: give unprocessed mobs a second chance based on Y-level
execute unless score #debug_boost ec.debug matches 1 as @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.furia,tag=!ec.patron,limit=1,sort=random] at @s run function evercraft:mobs/furia/depth_bonus

# Tag mobs that weren't converted so we don't check them again
tag @e[type=#evercraft:mobs/furia/furia_targets,tag=!ec.furia.processed,tag=!ec.furia,limit=50] add ec.furia.processed

schedule function evercraft:mobs/furia/check 1s
