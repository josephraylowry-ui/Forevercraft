# ============================================================
# DEBUG — Grant all alternate advancements
# Usage: /function evercraft:achievements/debug/grant_all
# ============================================================

tellraw @s [{text:"[Achievements] ",color:"green"},{text:"Granting all 600 alternate advancements...",color:"yellow"}]

# Grant all 7 advancement tabs (recursively grants all children)
advancement grant @s from evercraft:alternate/combat_root
advancement grant @s from evercraft:alternate/gathering_root
advancement grant @s from evercraft:alternate/companions_root
advancement grant @s from evercraft:alternate/exploration_root
advancement grant @s from evercraft:alternate/collection_root
advancement grant @s from evercraft:alternate/growth_root
advancement grant @s from evercraft:alternate/secrets_root

# Grant detection advancements too (so they can re-trigger)
advancement grant @s only evercraft:achievements/detect/one_punch_kill
advancement grant @s only evercraft:achievements/detect/lightning_strike
advancement grant @s only evercraft:achievements/detect/sky_walker

tellraw @s [{text:"[Achievements] ",color:"green"},{text:"All 600 alternate advancements granted!",color:"green"}]
tellraw @s [{text:"[Achievements] ",color:"green"},{text:"Prestige tokens will appear on next meta check cycle (5s)",color:"gray"}]
