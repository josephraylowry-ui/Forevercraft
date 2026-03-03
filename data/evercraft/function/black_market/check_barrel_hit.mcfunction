# ============================================================
# Black Market — Barrel Hit Check
# Verifies the barrel is a Black Market barrel and opens GUI
# Run at: barrel block position
# ============================================================

# Check if this barrel has our Black Market CustomName
execute unless data block ~ ~ ~ {CustomName:'{"text":"Black Market","color":"dark_red","italic":true}'} run return 0

# This IS a Black Market barrel — consume the click regardless of rep
scoreboard players set @s ec.bm_temp 1

# Check reputation — need Acquaintance (rank 1+)
execute unless score @s ec.rep_rank matches 1.. run return run tellraw @s [{text:"[Black Market] ",color:"dark_red"},{text:"You haven't earned enough trust to trade here...",color:"gray",italic:true}]

# All checks passed — open the GUI
function evercraft:black_market/gui/open
