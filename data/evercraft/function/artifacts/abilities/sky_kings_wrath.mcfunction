# Sky King's Wrath — Master Bolt
# On hit: Summon 3 lightning bolts around target
advancement revoke @s only evercraft:artifacts/abilities/sky_kings_wrath_trigger
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~2 ~ ~
execute at @s at @e[type=!player,type=!item,distance=..50,limit=1,sort=nearest,nbt={hurt_time:10s}] run summon lightning_bolt ~ ~ ~2
execute at @s run particle electric_spark ~ ~1 ~ 1 1 1 0.3 30
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 1 0.8

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
