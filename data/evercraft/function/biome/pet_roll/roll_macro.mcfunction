# Biome Pet Roll — Macro Dispatcher (OPT-9, Session 11)
# Called with {rarity:"common", biome_id:N} from storage
# Collapses 24 conditional branches into 1 dynamic loot table reference
$loot give @s loot evercraft:pets/biome/$(rarity)_$(biome_id)
