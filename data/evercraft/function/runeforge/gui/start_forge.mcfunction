# Runeforge GUI — Start Forging (begins 3-day timer)
# Run as player with RF.InMenu tag, at player position

# Verify state is 1 (rune deposited)
execute unless score @s rf.state matches 1 run return 0

# Store current gametime as forge_started_at on the nearest marker
execute store result storage evercraft:runeforge temp_gametime long 1 run time query gametime
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.forge_started_at set from storage evercraft:runeforge temp_gametime

# Set state to 2 (forging in progress)
data modify entity @e[type=marker,tag=RF.Marker,distance=..6,limit=1,sort=nearest] data.rf_state set value 2
scoreboard players set @s rf.state 2

# Effects
playsound minecraft:block.anvil.use master @a[distance=..16] ~ ~ ~ 0.8 0.6
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.8 1.0
particle minecraft:flame ~ ~1 ~ 0.3 0.2 0.3 0.02 20

# Title notification
title @s times 5 40 10
title @s title {text:" "}
title @s subtitle [{text:"Forging Begun!",color:"gold",bold:true}]
tellraw @s [{text:"Your rune is being forged... Return in ",color:"gold"},{text:"3 days",color:"yellow",bold:true},{text:"!",color:"gold"}]

# Close menu — forging is hands-off, player should leave
function evercraft:runeforge/gui/close
