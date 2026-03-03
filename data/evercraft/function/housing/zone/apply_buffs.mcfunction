# ============================================================
# Housing Zone — Apply tier-based buffs
# Run as: player in their home zone (hs.in_zone = 1)
# Called every 2s from zone/check while in zone
# Potion effects given with 5s duration (2s refresh = always active)
# DR handled by attribute modifier (applied on enter, removed on leave)
# ============================================================

# Tier 1+: Regeneration I (5s)
effect give @s regeneration 5 0 true

# Tier 2+: Saturation (5s)
execute if score @s hs.tier matches 2.. run effect give @s saturation 5 0 true

# Tier 3+: DR bonus handled by attribute modifier in zone/enter (0.05 or 0.1 luck)

# Tier 4+: Fire Resistance (5s)
execute if score @s hs.tier matches 4.. run effect give @s fire_resistance 5 0 true

# Tier 5: Resistance I (5s)
execute if score @s hs.tier matches 5 run effect give @s resistance 5 0 true
