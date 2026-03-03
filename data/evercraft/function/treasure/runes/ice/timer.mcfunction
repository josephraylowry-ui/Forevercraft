execute at @s[scores={mt.tick=15}] run particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 0.2 50 force

execute at @s run setblock ~ ~-1 ~ blue_ice keep

execute at @s[scores={mt.ice_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s mt.ice_rune 1