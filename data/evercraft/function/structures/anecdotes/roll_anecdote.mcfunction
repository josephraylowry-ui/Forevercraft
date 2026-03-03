# Guaranteed anecdote drop on first matching crate, once per player per anecdote type
# Run as player, at barrel position
# Uses structure ID to determine which anecdote to give
# Anecdote mapping:
#   Fisherman's: Shipwrecks (11), Ocean ruins (12), Ocean monuments (8)
#   Miner's: Mineshafts (17), Ancient cities (1), Trial chambers (3)
#   Wanderer's: Desert temples (9), Jungle temples (10), Pillager outposts (14), Trail ruins (15)
#   Scholar's: Strongholds (4), Woodland mansions (5), End cities (2)
#   Beastkeeper's: Villages (16), Igloos (13)
#   Elder's: Bastions (6), Fortresses (7), Ruined portals (18)

# === FISHERMAN'S ANECDOTE ===
# Structures: Shipwreck (11), Ocean Ruin (12), Monument (8)
execute if score @s cf.struct_id matches 8 unless score @s ec.anec_fisher matches 1 run function evercraft:structures/anecdotes/give_fishermans
execute if score @s cf.struct_id matches 11 unless score @s ec.anec_fisher matches 1 run function evercraft:structures/anecdotes/give_fishermans
execute if score @s cf.struct_id matches 12 unless score @s ec.anec_fisher matches 1 run function evercraft:structures/anecdotes/give_fishermans

# === MINER'S ANECDOTE ===
# Structures: Mineshaft (17), Ancient City (1), Trial Chambers (3)
execute if score @s cf.struct_id matches 1 unless score @s ec.anec_miner matches 1 run function evercraft:structures/anecdotes/give_miners
execute if score @s cf.struct_id matches 3 unless score @s ec.anec_miner matches 1 run function evercraft:structures/anecdotes/give_miners
execute if score @s cf.struct_id matches 17 unless score @s ec.anec_miner matches 1 run function evercraft:structures/anecdotes/give_miners

# === WANDERER'S ANECDOTE ===
# Structures: Desert Pyramid (9), Jungle Pyramid (10), Pillager Outpost (14), Trail Ruins (15)
execute if score @s cf.struct_id matches 9 unless score @s ec.anec_wanderer matches 1 run function evercraft:structures/anecdotes/give_wanderers
execute if score @s cf.struct_id matches 10 unless score @s ec.anec_wanderer matches 1 run function evercraft:structures/anecdotes/give_wanderers
execute if score @s cf.struct_id matches 14 unless score @s ec.anec_wanderer matches 1 run function evercraft:structures/anecdotes/give_wanderers
execute if score @s cf.struct_id matches 15 unless score @s ec.anec_wanderer matches 1 run function evercraft:structures/anecdotes/give_wanderers

# === SCHOLAR'S ANECDOTE ===
# Structures: Stronghold (4), Woodland Mansion (5), End City (2)
execute if score @s cf.struct_id matches 2 unless score @s ec.anec_scholar matches 1 run function evercraft:structures/anecdotes/give_scholars
execute if score @s cf.struct_id matches 4 unless score @s ec.anec_scholar matches 1 run function evercraft:structures/anecdotes/give_scholars
execute if score @s cf.struct_id matches 5 unless score @s ec.anec_scholar matches 1 run function evercraft:structures/anecdotes/give_scholars

# === BEASTKEEPER'S ANECDOTE ===
# Structures: Village (16), Igloo (13)
execute if score @s cf.struct_id matches 13 unless score @s ec.anec_beast matches 1 run function evercraft:structures/anecdotes/give_beastkeepers
execute if score @s cf.struct_id matches 16 unless score @s ec.anec_beast matches 1 run function evercraft:structures/anecdotes/give_beastkeepers

# === ELDER'S ANECDOTE ===
# Structures: Bastion (6), Fortress (7), Ruined Portal (18) - structures without specific anecdotes
execute if score @s cf.struct_id matches 6 unless score @s ec.anec_elder matches 1 run function evercraft:structures/anecdotes/give_elders
execute if score @s cf.struct_id matches 7 unless score @s ec.anec_elder matches 1 run function evercraft:structures/anecdotes/give_elders
execute if score @s cf.struct_id matches 18 unless score @s ec.anec_elder matches 1 run function evercraft:structures/anecdotes/give_elders
