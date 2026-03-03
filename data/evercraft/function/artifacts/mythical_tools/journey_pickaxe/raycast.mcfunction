# Journey Pickaxe - Raycast
# Finds where to mine ores/blocks
# Mode 0 (vein): looks for ores only
# Mode 1 (3x3): looks for any pickaxe-mineable block

# Distance 0
execute if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute if predicate evercraft:mythical_tools/is_ore run return 0
execute if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 0.5
execute positioned ^ ^ ^0.5 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^0.5 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^0.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^0.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 1
execute positioned ^ ^ ^1 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^1 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^1 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^1 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 1.5
execute positioned ^ ^ ^1.5 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^1.5 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^1.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^1.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 2
execute positioned ^ ^ ^2 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^2 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^2 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^2 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 2.5
execute positioned ^ ^ ^2.5 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^2.5 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^2.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^2.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 3
execute positioned ^ ^ ^3 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^3 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^3 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^3 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 3.5
execute positioned ^ ^ ^3.5 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^3.5 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^3.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^3.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 4
execute positioned ^ ^ ^4 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^4 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^4 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^4 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 4.5
execute positioned ^ ^ ^4.5 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^4.5 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^4.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^4.5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run return 0

# Distance 5
execute positioned ^ ^ ^5 if predicate evercraft:mythical_tools/is_ore run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
execute positioned ^ ^ ^5 if predicate evercraft:mythical_tools/is_ore run return 0
execute positioned ^ ^ ^5 if score @s ec.pick_mode matches 1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run function evercraft:artifacts/mythical_tools/journey_pickaxe/mine_start
