# Artifact Collection — Back to Tier Picker
# From category picker (page 2) → tier picker (page 1)
# Run as the player, at player, facing anchor

# Reset page
scoreboard players set @s adv.gui_page 1

# Kill category picker / constellation display + sub-nav
kill @e[type=text_display,tag=Adv.ArtCats,distance=..7]
kill @e[type=interaction,tag=Adv.ArtCats,distance=..7]
kill @e[type=text_display,tag=Adv.ArtConst,distance=..7]
kill @e[type=text_display,tag=Adv.ArtSubNav,distance=..7]
kill @e[type=interaction,tag=Adv.ArtSubNav,distance=..7]

# Restore section title
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Artifact Collection \u2726",color:"light_purple",bold:true}

# Respawn tier picker
function evercraft:codex/hub/artifacts/spawn_tiers

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
