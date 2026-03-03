# ============================================================
# Inscription Stones — Load
# Init scoreboards and start effects tick loop
# ============================================================

scoreboard objectives add ec.inscr_count dummy
scoreboard objectives add ec.inscr_owner dummy "Stone Owner ID"

# Start the effects/particles/break-check loop (5 seconds)
schedule function evercraft:inscription/effects_tick 100t
