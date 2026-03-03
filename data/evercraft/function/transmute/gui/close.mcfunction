# Artifact Transmutation GUI — Close
# Run as: player

execute unless entity @s[tag=TX.InMenu] run return 0

# Kill all menu elements near the player
kill @e[type=item_display,tag=TX.MenuEl,distance=..7]
kill @e[type=text_display,tag=TX.MenuEl,distance=..7]
kill @e[type=interaction,tag=TX.MenuEl,distance=..7]

# Remove tag (deposit state persists in scoreboards)
tag @s remove TX.InMenu

# Sound
playsound minecraft:block.anvil.use master @s ~ ~ ~ 0.3 0.8
