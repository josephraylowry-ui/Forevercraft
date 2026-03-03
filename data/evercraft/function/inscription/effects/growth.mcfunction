# Inscription Stone — Growth
# Apply bone_meal equivalent to random crops within 8 blocks
# Pick 3 random spots and try to grow crops there

# Attempt crop growth at random offsets using spread players + fill
# Simpler approach: use particle + direct block growth via random
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 wheat[age=7] replace wheat[age=6]
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 carrots[age=7] replace carrots[age=6]
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 potatoes[age=7] replace potatoes[age=6]
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 beetroots[age=3] replace beetroots[age=2]

# Advance mid-stage crops too
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 wheat[age=4] replace wheat[age=3]
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 carrots[age=4] replace carrots[age=3]
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 potatoes[age=4] replace potatoes[age=3]
execute positioned ~-8 ~ ~-8 run fill ~0 ~-1 ~0 ~16 ~1 ~16 beetroots[age=1] replace beetroots[age=0]
