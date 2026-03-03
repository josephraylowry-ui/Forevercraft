# Tomb System — Check Interaction (Right-Click on Grave)
# @s = interaction entity with tag ec.tomb_interact
# Called from tick_marker when interaction data is detected
# #tomb_g_uuid0-3 ec.temp = this grave's owner UUID (set by tick_marker)

# Clear the interaction data so it doesn't fire again
data remove entity @s interaction

# Get the interacting player via the target relation
# `on target` resolves to the player who right-clicked (interaction entity)
# `on attacker` is for left-click — `on target` is for right-click with response:1b
execute on target run function evercraft:tomb/companion/offer
