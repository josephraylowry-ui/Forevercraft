# Dragon Pierce — Dragonmaster Lance
# On hit: Fire damage + AoE knockback + ignite
advancement revoke @s only evercraft:artifacts/abilities/dragon_pierce_trigger
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run damage @s 5 minecraft:on_fire
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest,nbt={hurt_time:10s}] run data modify entity @s Fire set value 60
execute at @s as @e[type=!player,type=!item,distance=..6,limit=5,sort=nearest,nbt={hurt_time:0s}] at @s facing entity @p feet run tp @s ^ ^ ^-2
execute at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.1 25
playsound minecraft:entity.ender_dragon.growl player @a[distance=..20] ~ ~ ~ 0.5 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
