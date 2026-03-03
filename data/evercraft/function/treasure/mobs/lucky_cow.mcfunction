
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1

summon mooshroom ~ ~ ~ {Silent:0b,CustomNameVisible:0b,Health:50f,Type:"brown",stew_effects:[{id:"minecraft:luck",duration:12001}],Tags:["mt.lucky","mt.entity","smithed.entity"],CustomName:{text:"Lucky Cow",color:"dark_green",italic:false},active_effects:[{id:"minecraft:regeneration",amplifier:0,duration:19999980,show_particles:1b}],attributes:[{id:"minecraft:max_health",base:50}]}

advancement revoke @s only evercraft:treasure/hack/lucky_cow