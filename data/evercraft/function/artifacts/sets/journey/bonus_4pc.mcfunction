# Journey Set 4pc Bonus: Miner's Call — grants horn ability
tag @s add journey_4pc
# Give goat horn if not already held
execute unless items entity @s container.* minecraft:goat_horn unless items entity @s weapon.* minecraft:goat_horn run function evercraft:artifacts/sets/journey/grant_ability
