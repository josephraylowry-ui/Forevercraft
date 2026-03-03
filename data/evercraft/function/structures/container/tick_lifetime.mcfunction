# Tick lifetime of temporary loot containers
# Run as marker entities with tag cf.temp_container

# Decrease lifetime
execute store result score #life cf.temp run data get entity @s data.lifetime
scoreboard players remove #life cf.temp 1
execute store result entity @s data.lifetime int 1 run scoreboard players get #life cf.temp

# Check if container is empty (remove immediately if so)
execute if block ~ ~ ~ minecraft:barrel run function evercraft:structures/container/check_empty

# If lifetime expired, remove container and marker
execute if score #life cf.temp matches ..0 run function evercraft:structures/container/remove
