# Soul Lantern Fragment - XP Boost
# Magnetizes XP orbs from 12 blocks and grants bonus XP
# Called from tick function for players with the accessory

# Check if player has Soul Lantern Fragment in inventory
execute unless items entity @s container.* *[custom_data~{artifact:"soul_lantern_fragment"}] run return 0

# Magnetize XP orbs within 12 blocks toward the player
execute as @e[type=experience_orb,distance=2..12] at @s run tp @s ^ ^ ^-0.5 facing entity @p eyes

# Pull very close orbs directly to player
execute at @s as @e[type=experience_orb,distance=..2] run tp @s ~ ~0.5 ~

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
