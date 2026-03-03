# Ender Dragon 4-Piece Bonus: Dragon's Fury — Dragon Blade
execute unless entity @s[tag=ender_dragon_4pc] run function evercraft:artifacts/sets/ender_dragon/grant_dragon_blade
tag @s add ender_dragon_4pc

# Dragon aura — end particles around player
particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.02 3 force @s
