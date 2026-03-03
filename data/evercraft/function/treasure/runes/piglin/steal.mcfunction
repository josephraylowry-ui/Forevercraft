tag @s add mt.entity
scoreboard players set @s mt.entity 500

playsound minecraft:entity.piglin.celebrate master @a[distance=..20] ~ ~ ~ 1 2 1

attribute @s armor modifier add mt.piglin_rune_debuff -0.15 add_multiplied_total
attribute @s armor_toughness modifier add mt.piglin_rune_debuff -0.15 add_multiplied_total

scoreboard players set @s mt.absorb_steal 200