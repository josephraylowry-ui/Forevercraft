# Runeforge — Setup placed block
# Spawns marker at block center, interaction entity on top, and display overlay

# Spawn marker at block center with timer data
summon marker ~0.5 ~ ~0.5 {Tags:["RF.Marker"],data:{rf_state:0,rf_rune_id:0,forge_started_at:0L}}

# Spawn interaction entity on top of block for right-click detection
summon interaction ~0.5 ~1.0 ~0.5 {Tags:["RF.Interact"],width:0.9f,height:0.5f,response:1b}

# Spawn overlay display (anvil texture)
data modify storage evercraft:runeforge temp_skin set value "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWI0MjVhYTNkOTQ2MThhODdkYWM5Yzk0ZjM3N2FmNmNhNDk4NGMwNzU3OTY3NGZhZDkxN2Y2MDJiN2JmMjM1In19fQ=="
function evercraft:runeforge/spawn_display with storage evercraft:runeforge

# Feedback
tellraw @p[distance=..8] [{text:"Runeforge placed! ",color:"red"},{text:"Right-click to open.",color:"gray"}]
playsound minecraft:block.anvil.place master @a[distance=..16] ~ ~ ~ 0.8 0.8
particle minecraft:flame ~0.5 ~1.2 ~0.5 0.3 0.2 0.3 0.02 15
