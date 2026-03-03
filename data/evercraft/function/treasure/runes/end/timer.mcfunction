execute at @s[scores={mt.tick=15}] run particle minecraft:reverse_portal ~ ~ ~ 0.5 0.5 0.5 2 50 force

attribute @s[scores={mt.end_rune=1}] knockback_resistance modifier remove mt.end_rune
attribute @s[scores={mt.end_rune=1}] attack_damage modifier remove mt.end_rune

execute at @s[scores={mt.end_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

execute at @s as @a[scores={mt.use_pearl=1..},distance=..8] run function evercraft:treasure/runes/end/kill_pearl

scoreboard players remove @s mt.end_rune 1