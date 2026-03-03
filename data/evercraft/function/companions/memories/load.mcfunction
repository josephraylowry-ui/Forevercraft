# Companion Memories — Load
# Called from init.mcfunction on /reload

# Per-player tracking
scoreboard objectives add ec.pet_mem dummy "Pet Memory Count"
scoreboard objectives add ec.pet_hours dummy "Pet Hours Together"
scoreboard objectives add ec.pet_biome_prev dummy "Pet Previous Biome"

# Memory bit values as constants on Pets.Calc
# Bit 0 (1)   = First Steps Together
# Bit 1 (2)   = The Hunt (patron kill)
# Bit 2 (4)   = Against the Colossus (boss kill)
# Bit 3 (8)   = Treasure Found (mythical crate)
# Bit 4 (16)  = New Horizons (biome change)
# Bit 5 (32)  = The Long Road (10h active)
# Bit 6 (64)  = Into the Depths (Y < -48)
# Bit 7 (128) = Through the Portal (nether/end)
# Bit 8 (256) = A Mythical Discovery (mythical artifact)
# Bit 9 (512) = Eternal Bond (relationship level 5)
scoreboard players set #mem_b0 Pets.Calc 1
scoreboard players set #mem_b1 Pets.Calc 2
scoreboard players set #mem_b2 Pets.Calc 4
scoreboard players set #mem_b3 Pets.Calc 8
scoreboard players set #mem_b4 Pets.Calc 16
scoreboard players set #mem_b5 Pets.Calc 32
scoreboard players set #mem_b6 Pets.Calc 64
scoreboard players set #mem_b7 Pets.Calc 128
scoreboard players set #mem_b8 Pets.Calc 256
scoreboard players set #mem_b9 Pets.Calc 512
scoreboard players set #mem_10h Pets.Calc 36000
