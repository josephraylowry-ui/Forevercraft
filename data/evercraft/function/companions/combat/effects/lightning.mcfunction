# Combat Effect: Lightning — Bonus 2 damage + electric visual
damage @e[tag=pc.target,limit=1] 2 minecraft:lightning_bolt
execute at @e[tag=pc.target,limit=1] run particle electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.1 20
execute at @e[tag=pc.target,limit=1] run playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 1.8
