# Night Terrors — 60-second eligibility check
# Conditions: New Moon night, DR 30+, Overworld, above Y=40, not on cooldown

# Reschedule first to guarantee loop continuity
schedule function evercraft:night_terrors/check 60s

# Early exits: must be new moon (phase 4) and nighttime (14000-22000)
execute unless score #moon_phase ec.var matches 4 run return 0
execute unless score #visual_time ec.var matches 14000..22000 run return 0

# Decrement cooldowns (1 per minute = 1800 seconds / 60 = 30 decrements for 30-min CD)
execute as @a[scores={ec.nt_cd=1..}] run scoreboard players remove @s ec.nt_cd 1

# Check each eligible player
execute as @a[gamemode=!spectator,gamemode=!creative,scores={ec.nt_active=0,ec.nt_cd=0}] at @s if dimension minecraft:overworld if predicate evercraft:night_terrors/above_y40 run function evercraft:night_terrors/try_spawn
