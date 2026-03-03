execute at @s[scores={mt.tick=15}] run particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0.2 50 force

execute at @s run fill ~-2 ~2 ~2 ~2 ~-2 ~-2 air replace water

execute at @s[scores={mt.sponge_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s mt.sponge_rune 1