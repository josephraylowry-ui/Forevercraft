# Ignite Block - Set fire at the target location
# Called when raycast hits a solid block

# Try to place fire on top of the block
execute positioned ~ ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ fire

# If can't place above, try in front (the air block we're in)
execute positioned ^ ^ ^-0.5 if block ~ ~ ~ air run setblock ~ ~ ~ fire

# Visual effects at fire location
particle flame ~ ~ ~ 0.3 0.3 0.3 0.05 15
particle smoke ~ ~ ~ 0.2 0.2 0.2 0.02 8
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.6 1.2
