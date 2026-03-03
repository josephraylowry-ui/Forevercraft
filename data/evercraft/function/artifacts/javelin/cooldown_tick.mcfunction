# Javelin Class — 1s Cooldown Tick
# Decrements ability cooldown for all javelin users

# Skip if nobody has active cooldown
execute unless entity @a[scores={ec.jv_cd=1..},limit=1] run return run schedule function evercraft:artifacts/javelin/cooldown_tick 1s

# Decrement cooldowns (1 per second)
scoreboard players remove @a[scores={ec.jv_cd=1..}] ec.jv_cd 1

# Reschedule
schedule function evercraft:artifacts/javelin/cooldown_tick 1s
