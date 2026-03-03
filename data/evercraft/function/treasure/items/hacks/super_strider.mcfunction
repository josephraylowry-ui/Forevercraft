
summon strider ~ ~ ~ {Health:50f,equipment:{saddle:{id:"minecraft:saddle",count:1}},active_effects:[{id:"minecraft:regeneration",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:1b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:2}]}


particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1

particle minecraft:scrape ~ ~0.8 ~ 0.4 0.4 0.4 0 10 force

advancement revoke @s only evercraft:treasure/hack/super_strider