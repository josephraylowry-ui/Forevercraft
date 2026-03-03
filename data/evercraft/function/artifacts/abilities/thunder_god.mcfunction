# Thunder God — Mjolnir
# On hit: Chain lightning hits 5 nearby enemies
advancement revoke @s only evercraft:artifacts/abilities/thunder_god_trigger
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] as @e[type=!player,type=!item,distance=..8,limit=5,sort=nearest] run damage @s 4 minecraft:lightning_bolt
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~
execute at @s run particle electric_spark ~ ~1 ~ 1.5 1 1.5 0.2 40
playsound minecraft:entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.8 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
