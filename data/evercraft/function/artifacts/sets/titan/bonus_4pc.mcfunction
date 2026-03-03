# Tempest 4-Piece Bonus: Tidal Horn + Water Walking
execute unless entity @s[tag=titan_4pc] run function evercraft:artifacts/sets/titan/grant_ability_item
tag @s add titan_4pc
# Water aura — bubble particles around player
particle bubble_pop ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s
# Water walking
function evercraft:artifacts/sets/titan/water_walk
