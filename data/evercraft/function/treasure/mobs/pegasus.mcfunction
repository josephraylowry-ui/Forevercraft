
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1

summon horse ~ ~1 ~ {Health:50f,Tame:1b,variant:"white",Tags:["mt.pega","smithed.entity"],CustomName:{color:"gold",italic:false,text:"Pegasus"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"minecraft:frost_walker":5}}}},attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:2},{id:"minecraft:jump_strength",base:1},{id:"minecraft:knockback_resistance",base:0.5},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.42}]}

advancement revoke @s only evercraft:treasure/hack/pegasus