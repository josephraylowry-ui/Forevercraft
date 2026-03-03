# ============================================================
# Campfire Kitchen GUI — Cook Button Click Handler (Macro)
# Runs as the interaction entity, at its position
# Args: {slot: 0-5}
# ============================================================

# Clear click data
data remove entity @s interaction

# Store which slot was clicked
$scoreboard players set #ck_slot ec.temp $(slot)

# Run cook dispatch as the player
execute as @a[tag=CK.InMenu,distance=..5,limit=1] run function evercraft:cooking/recipes/cook_dispatch
