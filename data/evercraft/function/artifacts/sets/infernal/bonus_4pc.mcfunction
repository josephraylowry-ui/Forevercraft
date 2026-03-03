# Infernal 4-Piece Bonus: Infernal Eruption — AoE fire burst horn
execute unless entity @s[tag=infernal_4pc] run function evercraft:artifacts/sets/infernal/grant_ability_item
tag @s add infernal_4pc

# Infernal aura — fire particles around player
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.02 5 force @s
