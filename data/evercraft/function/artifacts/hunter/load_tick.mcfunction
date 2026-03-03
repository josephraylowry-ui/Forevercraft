# Hunter Crossbow — Load Tick
# Called every tick while loading a hunter crossbow (via using_item advancement)
advancement revoke @s only evercraft:artifacts/hunter/load

# Identify crossbow if needed
execute if score @s ec.ht_bow_id matches 0 run function evercraft:artifacts/hunter/identify_crossbow

# Check for Fade: sneaking + no fade cooldown
execute if entity @s[predicate=evercraft:is_sneaking] if score @s ec.ht_fade matches 0 run function evercraft:artifacts/hunter/fade
