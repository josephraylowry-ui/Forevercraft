# ============================================================
# DEPTH SPAWN SCALING — Load
# Mob spawn rates scale from 1.0x at surface to 1.5x at bedrock
# ============================================================

# Depth tracking scoreboards
scoreboard objectives add ec.depth_y dummy
scoreboard objectives add ec.depth_mult dummy
scoreboard objectives add ec.depth_tier dummy
scoreboard objectives add ec.spawn_roll dummy

# Constants for depth calculation
# Surface = Y 64+, Bedrock = Y -60
# Range = 124 blocks
# Multiplier = 1.0 + (depth / 124 * 0.5)

tellraw @a ["",{text:"[Depth] ",color:"dark_gray"},{text:"Spawn scaling system loaded",color:"gray"}]
