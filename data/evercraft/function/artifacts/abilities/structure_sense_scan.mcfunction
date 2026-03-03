# Spelunker's Echo - Scan for treasure blocks
# Creates particles at nearby chests and spawners

# Use positioned block checks to find chests and spawners and show particles
# Check a grid pattern for performance

# Chests - spawn soul particles
execute if block ~0 ~0 ~0 chest run particle soul ~ ~0.5 ~ 0.2 0.2 0.2 0.02 3
execute if block ~8 ~0 ~0 chest run particle soul ~8 ~0.5 ~ 0.2 0.2 0.2 0.02 3
execute if block ~16 ~0 ~0 chest run particle soul ~16 ~0.5 ~ 0.2 0.2 0.2 0.02 3
execute if block ~0 ~0 ~8 chest run particle soul ~ ~0.5 ~8 0.2 0.2 0.2 0.02 3
execute if block ~8 ~0 ~8 chest run particle soul ~8 ~0.5 ~8 0.2 0.2 0.2 0.02 3
execute if block ~16 ~0 ~8 chest run particle soul ~16 ~0.5 ~8 0.2 0.2 0.2 0.02 3
execute if block ~0 ~0 ~16 chest run particle soul ~ ~0.5 ~16 0.2 0.2 0.2 0.02 3
execute if block ~8 ~0 ~16 chest run particle soul ~8 ~0.5 ~16 0.2 0.2 0.2 0.02 3
execute if block ~16 ~0 ~16 chest run particle soul ~16 ~0.5 ~16 0.2 0.2 0.2 0.02 3

# Spawners - spawn flame particles
execute if block ~0 ~0 ~0 spawner run particle flame ~ ~0.5 ~ 0.3 0.3 0.3 0.02 5
execute if block ~8 ~0 ~0 spawner run particle flame ~8 ~0.5 ~ 0.3 0.3 0.3 0.02 5
execute if block ~16 ~0 ~0 spawner run particle flame ~16 ~0.5 ~ 0.3 0.3 0.3 0.02 5
execute if block ~0 ~0 ~8 spawner run particle flame ~ ~0.5 ~8 0.3 0.3 0.3 0.02 5
execute if block ~8 ~0 ~8 spawner run particle flame ~8 ~0.5 ~8 0.3 0.3 0.3 0.02 5
execute if block ~16 ~0 ~8 spawner run particle flame ~16 ~0.5 ~8 0.3 0.3 0.3 0.02 5
execute if block ~0 ~0 ~16 spawner run particle flame ~ ~0.5 ~16 0.3 0.3 0.3 0.02 5
execute if block ~8 ~0 ~16 spawner run particle flame ~8 ~0.5 ~16 0.3 0.3 0.3 0.02 5
execute if block ~16 ~0 ~16 spawner run particle flame ~16 ~0.5 ~16 0.3 0.3 0.3 0.02 5
