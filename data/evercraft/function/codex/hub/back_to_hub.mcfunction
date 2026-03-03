# Codex Hub — Back to Hub
# Kills all section content and returns to hub directory page
# Run as the player

# Kill all section content (text_display + interaction)
kill @e[type=text_display,tag=Adv.SectionContent,distance=..7]
kill @e[type=interaction,tag=Adv.SectionContent,distance=..7]

# Kill advantage tree page content (if in section 1 — Page3 tag from prestige abilities)
kill @e[type=text_display,tag=Adv.Page1,distance=..7]
kill @e[type=interaction,tag=Adv.Page1,distance=..7]
kill @e[type=text_display,tag=Adv.Page3,distance=..7]
kill @e[type=interaction,tag=Adv.Page3,distance=..7]

# Kill nav arrows (spawned by multi-page sections)
kill @e[type=text_display,tag=Adv.NavLeftText,distance=..7]
kill @e[type=interaction,tag=Adv.NavLeftClick,distance=..7]
kill @e[type=text_display,tag=Adv.NavRightText,distance=..7]
kill @e[type=interaction,tag=Adv.NavRightClick,distance=..7]

# Clean up respec overlay if active
kill @e[type=text_display,tag=Adv.RespecOverlay,distance=..7]
kill @e[type=interaction,tag=Adv.RespecOverlay,distance=..7]
tag @s remove Adv.RespecMode

# Reset to hub
scoreboard players set @s adv.gui_section 0
scoreboard players set @s adv.gui_page 1

# Update title back to hub
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 The Forevercraft Codex \u2726",color:"gold",bold:true}

# Respawn hub buttons
function evercraft:codex/hub/spawn_hub

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
