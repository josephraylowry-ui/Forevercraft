# ============================================================
# Check Biome Discoveries
# Detect current biome, tag if not yet discovered
# Run as player at player position
# ============================================================

# Detect current biome (sets ec.biome_id 0-24)
function evercraft:biome/detect

# Skip if unknown biome
execute unless score @s ec.biome_id matches 0..24 run return fail

# Check each biome — only fires for current biome if not yet tagged
execute if score @s ec.biome_id matches 0 unless entity @s[tag=jn.b0] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 1 unless entity @s[tag=jn.b1] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 2 unless entity @s[tag=jn.b2] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 3 unless entity @s[tag=jn.b3] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 4 unless entity @s[tag=jn.b4] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 5 unless entity @s[tag=jn.b5] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 6 unless entity @s[tag=jn.b6] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 7 unless entity @s[tag=jn.b7] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 8 unless entity @s[tag=jn.b8] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 9 unless entity @s[tag=jn.b9] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 10 unless entity @s[tag=jn.b10] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 11 unless entity @s[tag=jn.b11] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 12 unless entity @s[tag=jn.b12] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 13 unless entity @s[tag=jn.b13] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 14 unless entity @s[tag=jn.b14] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 15 unless entity @s[tag=jn.b15] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 16 unless entity @s[tag=jn.b16] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 17 unless entity @s[tag=jn.b17] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 18 unless entity @s[tag=jn.b18] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 19 unless entity @s[tag=jn.b19] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 20 unless entity @s[tag=jn.b20] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 21 unless entity @s[tag=jn.b21] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 22 unless entity @s[tag=jn.b22] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 23 unless entity @s[tag=jn.b23] run function evercraft:journal/record/biome_discovered
execute if score @s ec.biome_id matches 24 unless entity @s[tag=jn.b24] run function evercraft:journal/record/biome_discovered
