# Sentinel Removal — Shield removed from offhand
# Run as player who was ec.sk_sentinel but lost their shield

tag @s remove ec.sk_sentinel

# Clear Resistance (natural expiry from 2s duration, but clear for instant feedback)
effect clear @s resistance
