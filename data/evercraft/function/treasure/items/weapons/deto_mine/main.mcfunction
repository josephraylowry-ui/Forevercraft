execute if entity @s[scores={mt.self_kill=1}] run summon creeper ~ ~1 ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,explosion_radius:6b,fuse:0,ignited:1b,Tags:["mt.entity","mt.deto_mine"],CustomName:{text:"detonation mine"},active_effects:[{id:"minecraft:mining_fatigue",amplifier:1,duration:200,show_particles:1b},{id:"minecraft:poison",amplifier:1,duration:200,show_particles:1b}]}

particle minecraft:flame ~ ~0.8 ~ 0.1 0.1 0.1 0.01 10 force

execute if entity @s[scores={mt.self_kill=1}] run particle minecraft:flame ~ ~0.8 ~ 0.1 0.1 0.1 0.5 100 force

kill @s[scores={mt.self_kill=0}]

scoreboard players remove @s[scores={mt.self_kill=1..}] mt.self_kill 1

