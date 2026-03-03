# Party GUI — Respawn Management Page
# Kills page content and re-spawns it (handles role changes after actions)
# Run as the player, at the player

# Kill all party page entities
kill @e[type=text_display,tag=Adv.PartyPage,distance=..7]
kill @e[type=interaction,tag=Adv.PartyPage,distance=..7]

# Cache new state for stale detection
scoreboard players operation #pty_gui_size ec.temp = @s ec.party_size
scoreboard players operation #pty_gui_role ec.temp = @s ec.party_role

# Respawn facing the anchor
execute facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..7,limit=1,sort=nearest] feet run function evercraft:party/gui/spawn_management

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
