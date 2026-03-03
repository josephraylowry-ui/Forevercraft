# Journey Shovel - 3x3 Area Digging Start
# Mines a 3x3 area of shovel-mineable blocks

# Mine center block
function evercraft:artifacts/mythical_tools/journey_shovel/area_dig

# Mine 3x3 grid around center (26 surrounding blocks)
# Layer above
execute positioned ~ ~1 ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~1 ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~1 ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~ ~1 ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~ ~1 ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~1 ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~1 ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~1 ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~1 ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig

# Same layer (excluding center which is already mined)
execute positioned ~1 ~ ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~ ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~ ~ ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~ ~ ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~ ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~ ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~ ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~ ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig

# Layer below
execute positioned ~ ~-1 ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~-1 ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~-1 ~ run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~ ~-1 ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~ ~-1 ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~-1 ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~1 ~-1 ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~-1 ~1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig
execute positioned ~-1 ~-1 ~-1 run function evercraft:artifacts/mythical_tools/journey_shovel/area_dig

# Play sound effect
playsound minecraft:block.sand.break master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 0.5 1.2

# Particle effect
particle minecraft:sweep_attack ~ ~0.5 ~ 1 0.5 1 0.1 8
particle minecraft:enchant ~ ~0.5 ~ 1 0.5 1 0.5 30
