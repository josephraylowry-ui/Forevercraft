
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1

summon pig ~ ~1 ~ {Health:20f,CustomName:{text:"Dirty Roller",color:"light_purple",italic:false},equipment:{saddle:{id:"minecraft:saddle",count:1}},active_effects:[{id:"minecraft:regeneration",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:1.3}]}

advancement revoke @s only evercraft:treasure/hack/dirty