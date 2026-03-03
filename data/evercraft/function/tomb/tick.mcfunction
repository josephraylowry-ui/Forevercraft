# Tomb System — Main Tick (10-tick self-schedule)
# Handles: per-grave dispatch, trigger handling, delivery checks
# NOTE: Death detection moved to evercraft:tick (per-tick) for accurate death position

# Re-schedule (10 ticks = 0.5s)
schedule function evercraft:tomb/tick 10t

# === PER-GRAVE TICK ===
# Tick each active grave marker (timer, particles, collection, interaction checks)
execute as @e[type=marker,tag=ec.tomb_data] at @s run function evercraft:tomb/tick_marker

# === TRIGGER HANDLING (Companion Recovery) ===
# Handle [Accept] clicks
execute as @a[scores={ec.tomb_accept=1..}] run function evercraft:tomb/companion/accept
scoreboard players set @a[scores={ec.tomb_accept=1..}] ec.tomb_accept 0
scoreboard players enable @a ec.tomb_accept

# Handle [Deny] clicks
execute as @a[scores={ec.tomb_deny=1..}] run function evercraft:tomb/companion/deny
scoreboard players set @a[scores={ec.tomb_deny=1..}] ec.tomb_deny 0
scoreboard players enable @a ec.tomb_deny

# === BUNDLE DELIVERY CHECK ===
# Check if any carrier with a soul bundle is near the owner
execute as @a[tag=ec.tomb_carrier] at @s run function evercraft:tomb/companion/tick_delivery
