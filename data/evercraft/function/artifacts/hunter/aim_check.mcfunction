# Hunter — Per-tick Aim Check
# Called for all players holding a hunter crossbow (loaded or not)

# Identify crossbow if not yet identified
execute if score @s ec.ht_bow_id matches 0 run function evercraft:artifacts/hunter/identify_crossbow

# === LOADED CROSSBOW: Steady Aim logic ===
# Sneaking + loaded → aim_tick (build focus)
execute if data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] if entity @s[predicate=evercraft:is_sneaking] run function evercraft:artifacts/hunter/aim_tick

# Loaded but not sneaking → reset aim (keep charged flag if already set)
execute if data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] unless entity @s[predicate=evercraft:is_sneaking] run scoreboard players set @s ec.ht_aim 0

# === UNLOADED: fire detection ===
# If charged and crossbow is now unloaded → they fired → start hit timer
execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] if score @s ec.ht_charged matches 1 if score @s ec.ht_hit_timer matches 0 run scoreboard players set @s ec.ht_hit_timer 60

# Reset aim when unloaded
execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] if score @s ec.ht_aim matches 1.. run scoreboard players set @s ec.ht_aim 0
