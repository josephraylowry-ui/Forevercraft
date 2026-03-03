# Try to give Wanderer's Anecdote - only if player hasn't received it before
# Called with 15% chance from various structure loot

# Check if player already has this anecdote
execute unless score @s ec.anec_wanderer matches 1 run function evercraft:anecdotes/give_wanderers
