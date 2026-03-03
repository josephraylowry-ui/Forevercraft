# Cosmetics Section — Click Detection (Section 3)
# Run as the player with menu open

# === NAVIGATION ARROWS (page switching within section 3) ===
execute as @e[type=interaction,tag=Adv.NavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction at @s run function evercraft:codex/hub/cosmetics/nav_left
execute as @e[type=interaction,tag=Adv.NavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction at @s run function evercraft:codex/hub/cosmetics/nav_right

# === PAGE-SPECIFIC CLICKS ===
# Page 1: Tier cosmetics (toggle cosmetic tier)
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.CosmClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:1}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.CosmClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.CosmClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:3}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.CosmClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:4}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.CosmClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_cosmetic {tier:5}

# Page 2: Crate particle clicks
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:1}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:2}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:3}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:4}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:5}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:6}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:7}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:8}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:9}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:10}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:11}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:12}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:13}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:14}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:15}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:16}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:17}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCPClick17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_particle {id:18}

# Page 2: Crate title clicks
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:1}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:2}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:3}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:4}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:5}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:6}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:7}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:8}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:9}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:10}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:11}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:12}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:13}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:14}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:15}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:16}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:17}
execute if score @s adv.gui_page matches 2 as @e[type=interaction,tag=Adv.CCTClick17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_crate_title {id:18}

# Page 3: Boss title clicks
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:1}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:2}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:3}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:4}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:5}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:6}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:7}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:8}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:9}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:10}
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title {boss_id:11}

# Page 3: Champion title click
execute if score @s adv.gui_page matches 3 as @e[type=interaction,tag=Adv.BTChampClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:advantage/gui/click_boss_title_champion
