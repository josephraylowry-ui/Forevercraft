# Combat Effect: Bleed — Instant damage tick (bonus 1hp)
damage @e[tag=pc.target,limit=1] 1 minecraft:mob_attack by @s
execute at @e[tag=pc.target,limit=1] run particle damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0.1 8
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.8 1.0
