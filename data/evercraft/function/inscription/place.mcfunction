# ============================================================
# Inscription Stones — Place (shared logic)
# Called from place_rune/<type>.mcfunction which sets temp.rune in storage
# Run as the player, at the placed block position
# ============================================================

# Revoke all per-type placement advancements so they can fire again
advancement revoke @s only evercraft:inscription/place_frostbite
advancement revoke @s only evercraft:inscription/place_life_steal
advancement revoke @s only evercraft:inscription/place_gold_greed
advancement revoke @s only evercraft:inscription/place_absorption
advancement revoke @s only evercraft:inscription/place_guardian
advancement revoke @s only evercraft:inscription/place_thornmail
advancement revoke @s only evercraft:inscription/place_force
advancement revoke @s only evercraft:inscription/place_growth

# Check placement limit (max 3 per player)
execute if score @s ec.inscr_count matches 3.. run tellraw @s [{text:"[Inscription] ",color:"dark_purple"},{text:"You cannot place more than 3 Inscription Stones!",color:"red"}]
execute if score @s ec.inscr_count matches 3.. run return 0

# Summon marker — rune type already set in storage by the bridge function
function evercraft:inscription/summon_marker with storage evercraft:inscription temp

# Store player's UUID[3] as owner ID on the new marker (for break tracking)
execute store result score @e[tag=ec.inscr_new,limit=1] ec.inscr_owner run data get entity @s UUID[3]
tag @e[tag=ec.inscr_new] remove ec.inscr_new
