# Aurora Bloom — STOP

# Clear world event state
scoreboard players set #we_active ec.var 0
scoreboard players set #we_event_id ec.var 0

# Set cooldown (72 hours = 5,184,000 ticks from now)
execute store result score #we_aurora_cd ec.var run time query gametime
scoreboard players add #we_aurora_cd ec.var 5184000

# Restore default plant growth rate
gamerule minecraft:random_tick_speed 3

# Remove all modifiers
execute as @a run attribute @s luck modifier remove ec_we_aurora
execute as @a run attribute @s luck modifier remove ec_we_aurora_biome

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The aurora fades, and nature returns to its rhythm...",color:"gray",italic:true}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Aurora Bloom Ended",color:"gray"}
