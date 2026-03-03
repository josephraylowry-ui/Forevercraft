# Striker — 1-Second Tick
# Impact decay, sprint Impact, cooldown decrements

# Reschedule
schedule function evercraft:artifacts/striker/tick_1s 1s

# === SPRINT IMPACT: +2/second while sprinting ===
execute as @a[tag=ec.sk_active] if predicate evercraft:sprinting run scoreboard players add @s ec.sk_impact 2

# === IMPACT DECAY: -3/second when idle (not sprinting, no recent combat) ===
execute as @a[tag=ec.sk_active,scores={ec.sk_combat=0,ec.sk_impact=1..}] unless predicate evercraft:sprinting run scoreboard players remove @s ec.sk_impact 3
# Clamp to 0
execute as @a[tag=ec.sk_active,scores={ec.sk_impact=..-1}] run scoreboard players set @s ec.sk_impact 0

# === GROUND SLAM COOLDOWN DECREMENT ===
scoreboard players remove @a[tag=ec.sk_active,scores={ec.sk_cd=1..}] ec.sk_cd 1
# Notify when cooldown expires
execute as @a[tag=ec.sk_active,scores={ec.sk_cd=0}] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.8
execute as @a[tag=ec.sk_active,scores={ec.sk_cd=0}] run scoreboard players set @s ec.sk_cd -1

# === SENTINEL FORTRESS COOLDOWN DECREMENT ===
scoreboard players remove @a[tag=ec.sk_sentinel,scores={ec.sk_fort_cd=1..}] ec.sk_fort_cd 1
execute as @a[tag=ec.sk_sentinel,scores={ec.sk_fort_cd=0}] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.8
execute as @a[tag=ec.sk_sentinel,scores={ec.sk_fort_cd=0}] run scoreboard players set @s ec.sk_fort_cd -1

# === IMPACT DISPLAY ===
execute as @a[tag=ec.sk_active,scores={ec.sk_impact=1..}] run function evercraft:artifacts/striker/show_impact
