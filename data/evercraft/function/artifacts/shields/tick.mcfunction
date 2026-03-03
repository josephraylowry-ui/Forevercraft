# Shield Tank System — Tick (1s self-schedule)
# Grants Resistance when holding a tank shield in mainhand
# Manages taunt pulls, taunt expiry, and ability cooldowns

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:artifacts/shields/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# === RESISTANCE PASSIVE (mainhand only) ===

# Mythical shields → Resistance II (amplifier 1)
execute as @a if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b,tier:"mythical"}] run effect give @s resistance 2 1 true

# Non-mythical shields → Resistance I (amplifier 0)
execute as @a if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] unless items entity @s weapon.mainhand minecraft:shield[custom_data~{tier:"mythical"}] run effect give @s resistance 2 0 true

# === COOLDOWN DECREMENTS (1s intervals) ===

# On-block cooldown
execute as @a[scores={ec.shield_cd=1..}] run scoreboard players remove @s ec.shield_cd 1

# Shift+use anti-spam
execute as @a[scores={ec.tk_use_cd=1..}] run scoreboard players remove @s ec.tk_use_cd 1

# Shield bash cooldown
execute as @a[scores={ec.tk_bash_cd=1..}] run scoreboard players remove @s ec.tk_bash_cd 1

# Offhand ability cooldown
execute as @a[scores={ec.tk_off_cd=1..}] run scoreboard players remove @s ec.tk_off_cd 1

# Taunt pull countdown
execute as @a[scores={ec.tk_pull_cd=1..}] run scoreboard players remove @s ec.tk_pull_cd 1

# === TAUNT SYSTEM ===

# Check for expired taunts and remove them
function evercraft:artifacts/shields/taunt/check_expiry

# Taunt pull: when pull CD reaches 0 for a player holding a mainhand shield, pull their mobs
execute as @a[scores={ec.tk_pull_cd=0}] if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] at @s run function evercraft:artifacts/shields/taunt/pull

# Initialize pull CD for players who just started holding a shield and have taunted mobs
# (tk_pull_cd not set yet = no score, set it to their tier's interval)
execute as @a unless score @s ec.tk_pull_cd matches 0.. if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] if score @s ec.tk_id matches 1.. run function evercraft:artifacts/shields/taunt/set_tier
execute as @a unless score @s ec.tk_pull_cd matches 0.. if items entity @s weapon.mainhand minecraft:shield[custom_data~{tank:1b}] if score @s ec.tk_id matches 1.. run scoreboard players operation @s ec.tk_pull_cd = #tk_pull_interval ec.var
