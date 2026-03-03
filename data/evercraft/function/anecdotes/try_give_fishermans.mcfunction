# Try to give Fisherman's Anecdote - only if player hasn't received it before
# Called with 15% chance from shipwreck/ocean structure loot

# Check if player already has this anecdote
execute unless score @s ec.anec_fisher matches 1 run function evercraft:anecdotes/give_fishermans
