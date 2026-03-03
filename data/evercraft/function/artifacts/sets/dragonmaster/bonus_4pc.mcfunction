# Dragonmaster 4-Piece Bonus: Dragon Horn — Summon dragon ally
execute unless entity @s[tag=dragonmaster_4pc] run function evercraft:artifacts/sets/dragonmaster/grant_ability_item
tag @s add dragonmaster_4pc

# Dragon aura — fire particles around player
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.01 3 force @s
