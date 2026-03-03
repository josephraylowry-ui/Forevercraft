# Combat Effect: Charm — Heals player for 2 HP (1 heart)
effect give @s instant_health 1 0
execute at @s run particle heart ~ ~2 ~ 0.3 0.2 0.3 0 3
execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
