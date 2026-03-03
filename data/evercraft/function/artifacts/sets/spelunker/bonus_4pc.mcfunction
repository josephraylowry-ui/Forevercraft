# Spelunker Set 4pc Bonus: Pathfinder — grants compass ability
tag @s add spelunker_4pc
# Give pathfinder's compass if not already held
execute unless items entity @s container.* minecraft:recovery_compass[custom_data~{pathfinders_compass:1b}] unless items entity @s weapon.* minecraft:recovery_compass[custom_data~{pathfinders_compass:1b}] run function evercraft:artifacts/sets/spelunker/grant_ability
