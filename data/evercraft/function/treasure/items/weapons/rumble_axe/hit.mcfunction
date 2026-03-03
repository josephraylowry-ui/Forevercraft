scoreboard players set @s mt.entity 201
scoreboard players set @s mt.rift_timer 200
tag @s add mt.entity
tag @s add mt.hit_by_rumble

effect give @s wither 1 0 true

attribute @s max_health modifier add mt.rumble_axe -0.25 add_multiplied_total

playsound minecraft:entity.warden.nearby_closest master @a[distance=..10] ~ ~ ~ 3 1.5 1