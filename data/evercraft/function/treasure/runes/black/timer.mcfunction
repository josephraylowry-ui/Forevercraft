execute at @s[scores={mt.tick=15}] run particle squid_ink ~ ~0.8 ~ 0.2 0.4 0.2 0.01 1 force @a

attribute @s[scores={mt.black_rune=1}] armor modifier remove mt.black_rune
attribute @s[scores={mt.black_rune=1}] armor_toughness modifier remove mt.black_rune

execute at @s[scores={mt.black_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s mt.black_rune 1