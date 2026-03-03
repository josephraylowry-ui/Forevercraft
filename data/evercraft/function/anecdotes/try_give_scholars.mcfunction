# Try to give Scholar's Anecdote - only if player hasn't received it before
# Called with 15% chance from stronghold/mansion/temple structure loot

# Check if player already has this anecdote
execute unless score @s ec.anec_scholar matches 1 run function evercraft:anecdotes/give_scholars
