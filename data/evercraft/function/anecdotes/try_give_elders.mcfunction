# Try to give Elder's Anecdote - only if player hasn't received it before
# Called with 15% chance from structure loot injection

# Check if player already has this anecdote
execute unless score @s ec.anec_elder matches 1 run function evercraft:anecdotes/give_elders
