# Water Net — Admin/Debug Cleanup
# Removes a WaterNet marker without dropping items
# Used for manual cleanup only — normal removal goes through water_net_on_break

# Notify nearby players
tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"A Water Net marker was removed.",color:"gray"}]
playsound minecraft:block.note_block.chime master @a[distance=..32] ~ ~ ~ 0.5 1.5

# Kill overlay display entities
kill @e[type=armor_stand,tag=WaterNet.stand,distance=..1]
kill @e[type=item_display,tag=WaterNet.display,distance=..1]

# Remove the marker
kill @s
