# Pet Crate Finish — Common
data remove block ~ ~ ~ lock
data merge block ~ ~ ~ {CustomName:{text:"Common Pet Crate",color:"white",italic:false}}
particle minecraft:firework ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force
playsound minecraft:entity.firework_rocket.blast ambient @a[distance=..16] ~ ~ ~
