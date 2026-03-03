# Hunter — Arrow Hit Detection
advancement revoke @s only evercraft:artifacts/hunter/hit

# Only process if holding a hunter crossbow
execute unless score @s ec.ht_bow_id matches 1.. run return 0

# Dispatch to precision hit or passive
execute if score @s ec.ht_charged matches 1 run function evercraft:artifacts/hunter/precision_hit
execute if score @s ec.ht_charged matches 0 run function evercraft:artifacts/hunter/passive_hit
