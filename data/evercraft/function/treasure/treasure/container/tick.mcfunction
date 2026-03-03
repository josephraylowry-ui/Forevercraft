# Treasure Container Tick - Scoreboard-based replacement for enchantment effects
# This runs every tick for entities with tag mt.treasure_container

# Increment timers
scoreboard players add @s mt.container_timer 1
scoreboard players add @s mt.container_lifetime 1

# Check if barrel is broken (not standing on barrel)
execute unless block ~ ~ ~ barrel run function evercraft:treasure/treasure/container/broke

# Refill loot periodically based on despawn speed setting
# Fast: 150 ticks, Standard: 300, Slow: 600, Sloth: 900, Hypersonic: 75
execute if entity @s[tag=mt.despawn_fast,scores={mt.container_timer=150..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=mt.despawn_standard,scores={mt.container_timer=300..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=mt.despawn_slow,scores={mt.container_timer=600..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=mt.despawn_sloth,scores={mt.container_timer=900..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=mt.despawn_hypersonic,scores={mt.container_timer=75..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill

# Spawn container visual when on team mt.hit (every 2 ticks)
execute if entity @s[team=mt.hit] if score @s mt.container_timer matches 2.. run function evercraft:treasure/treasure/container/spawn
execute if entity @s[team=mt.hit] if score @s mt.container_timer matches 2.. run scoreboard players set @s mt.container_timer 0

# Delete after timeout (1200 ticks = 60 seconds)
execute if score @s mt.container_lifetime matches 1200.. run function evercraft:treasure/treasure/container/delete
