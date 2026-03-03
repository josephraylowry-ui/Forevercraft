effect clear @s absorption

execute at @s run particle dust{color:[0.929,0.831,0.106],scale:0.85} ~ ~0.400 ~ 0.4 0.8 0.4 0 5 force @a

execute if entity @s[scores={mt.absorb_steal=..0}] run function evercraft:treasure/runes/piglin/over

scoreboard players remove @s mt.absorb_steal 1