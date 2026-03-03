# Codex Hub — Check Clicks (Hub Page)
# Detects clicks on the 5 hub directory buttons
# Run as the player (@s = player)

# Advantage Trees (section 1)
execute as @e[type=interaction,tag=Adv.HubClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:1}

# Challenges (section 2) — placeholder until Phase 2
execute as @e[type=interaction,tag=Adv.HubClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:2}

# Cosmetics (section 3) — placeholder until Phase 2
execute as @e[type=interaction,tag=Adv.HubClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:3}

# Artifact Collection (section 4) — placeholder until Phase 4
execute as @e[type=interaction,tag=Adv.HubClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:4}

# Travel Journal (section 5) — placeholder until Phase 3
execute as @e[type=interaction,tag=Adv.HubClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:5}

# Lore Discovery (section 6)
execute as @e[type=interaction,tag=Adv.HubClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:6}

# Party Bonds (section 7)
execute as @e[type=interaction,tag=Adv.HubClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:7}

# Classes (section 8)
execute as @e[type=interaction,tag=Adv.HubClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:8}
