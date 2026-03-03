
particle minecraft:end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10 force
playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 0.5 1 1

summon mooshroom ~ ~ ~ {Silent:0b,CustomNameVisible:0b,Health:50f,Type:"brown",stew_effects:[{id:"minecraft:health_boost",duration:6001}],Tags:["mt.health","mt.entity","smithed.entity"],CustomName:{text:"Health Boost Cow",color:"#FFB319",italic:false},active_effects:[{id:"minecraft:health_boost",amplifier:0,duration:19999980,show_particles:1b}],attributes:[{id:"minecraft:max_health",base:50}]}

advancement revoke @s only evercraft:treasure/hack/health_boost_cow