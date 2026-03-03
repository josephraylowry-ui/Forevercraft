# Try to give Miner's Anecdote - only if player hasn't received it before
# Called with 15% chance from mineshaft/underground structure loot

# Check if player already has this anecdote
execute unless score @s ec.anec_miner matches 1 run function evercraft:anecdotes/give_miners
