# Archer Bow — On Hit (arrow damages an entity)
# Called by player_hurt_entity advancement when arrow damage is dealt
advancement revoke @s only evercraft:artifacts/archer/hit

# Check if player has an active archer bow ID
execute unless score @s ec.ar_bow_id matches 1.. run return 0

# === OVERCHARGE HIT ===
execute if score @s ec.ar_charged matches 1 at @s run function evercraft:artifacts/archer/overcharge_hit

# === PASSIVE HIT EFFECTS ===
execute if score @s ec.ar_charged matches 0 at @s run function evercraft:artifacts/archer/passive_hit
