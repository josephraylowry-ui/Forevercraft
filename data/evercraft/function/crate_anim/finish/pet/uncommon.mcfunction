# Pet Crate Finish — Uncommon
data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Uncommon Pet Crate",color:"blue",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~
