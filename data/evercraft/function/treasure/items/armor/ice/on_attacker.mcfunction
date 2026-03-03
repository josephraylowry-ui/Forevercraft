tag @s add mt.entity
scoreboard players set @s mt.entity 61

scoreboard players set @s mt.ice_shoes_timer 60

attribute @s armor modifier add mt.ice_shoes_debuff -0.175 add_multiplied_total
attribute @s movement_speed modifier add mt.ice_shoes_debuff -0.25 add_multiplied_total
attribute @s armor_toughness modifier add mt.ice_shoes_debuff -0.175 add_multiplied_total

playsound minecraft:block.glass.break master @a[distance=..10] ~ ~ ~ 0.4 1.2 1

tag @s add mt.hit_by_ice