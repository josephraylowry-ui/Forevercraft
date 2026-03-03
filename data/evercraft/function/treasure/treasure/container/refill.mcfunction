# Refill the treasure barrel with loot
# Reset timer
scoreboard players set @s mt.container_timer 0

# Get loot table and refill
function evercraft:treasure/treasure/container/empty/get_loot_table
