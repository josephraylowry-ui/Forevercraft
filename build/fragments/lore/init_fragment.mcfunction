# === LORE DISCOVERY SYSTEM ===
function evercraft:lore/load

# === ANECDOTE TRACKING ===
# Track which anecdotes each player has found (0 = not found, 1 = found)
scoreboard objectives add ec.anec_elder dummy "Elder's Anecdote"
scoreboard objectives add ec.anec_fisher dummy "Fisherman's Anecdote"
scoreboard objectives add ec.anec_miner dummy "Miner's Anecdote"
scoreboard objectives add ec.anec_wanderer dummy "Wanderer's Anecdote"
scoreboard objectives add ec.anec_scholar dummy "Scholar's Anecdote"
scoreboard objectives add ec.anec_beast dummy "Beastkeeper's Anecdote"


# Artifact Biome Affinity (E27)
scoreboard objectives add ec.affinity_match dummy "Affinity Match"



# === EXPLORATION JOURNAL SYSTEM ===
function evercraft:journal/load



# === CAMPFIRE STORIES SYSTEM ===
function evercraft:campfire_stories/load



# === INSCRIPTION STONES SYSTEM ===
function evercraft:inscription/load

