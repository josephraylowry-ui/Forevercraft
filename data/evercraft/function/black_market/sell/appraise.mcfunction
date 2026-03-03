# ============================================================
# Black Market — Appraise Held Item
# Checks mainhand and determines sell price
# Sets ec.bm_price (0 = unsellable)
# Updates the appraisal text display
# ============================================================

# Reset price
scoreboard players set @s ec.bm_price 0

# Check if holding anything
execute unless items entity @s weapon.mainhand * run return run data modify entity @e[type=text_display,tag=BM.AppraiseTxt,distance=..8,limit=1] text set value {text:"Your mainhand is empty!",color:"red"}

# === ARTIFACT TIER DETECTION ===
# (Same pattern as transmute/gui/deposit.mcfunction)
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"common"}] run scoreboard players set @s ec.bm_price 1
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"uncommon"}] run scoreboard players set @s ec.bm_price 2
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"rare"}] run scoreboard players set @s ec.bm_price 4
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] run scoreboard players set @s ec.bm_price 8
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite"}] run scoreboard players set @s ec.bm_price 16
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical"}] run scoreboard players set @s ec.bm_price 32

# === VANILLA ITEM WHITELIST ===
# Netherite gear
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_sword run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_pickaxe run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_axe run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_shovel run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_hoe run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_helmet run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_chestplate run scoreboard players set @s ec.bm_price 2
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_leggings run scoreboard players set @s ec.bm_price 2
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand netherite_boots run scoreboard players set @s ec.bm_price 1
# Rare vanilla items
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand diamond_block run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand emerald_block run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand enchanted_golden_apple run scoreboard players set @s ec.bm_price 6
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand totem_of_undying run scoreboard players set @s ec.bm_price 4
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand elytra run scoreboard players set @s ec.bm_price 16
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand trident run scoreboard players set @s ec.bm_price 5
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand nether_star run scoreboard players set @s ec.bm_price 8
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand shulker_shell run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand heart_of_the_sea run scoreboard players set @s ec.bm_price 3
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand dragon_egg run scoreboard players set @s ec.bm_price 12
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand mace run scoreboard players set @s ec.bm_price 5
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand heavy_core run scoreboard players set @s ec.bm_price 4
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand conduit run scoreboard players set @s ec.bm_price 4
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand beacon run scoreboard players set @s ec.bm_price 10
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand sponge run scoreboard players set @s ec.bm_price 1

# === UPDATE APPRAISAL DISPLAY ===
# If price is 0, item cannot be sold
execute if score @s ec.bm_price matches 0 run data modify entity @e[type=text_display,tag=BM.AppraiseTxt,distance=..8,limit=1] text set value {text:"This item cannot be sold here.",color:"red"}
execute if score @s ec.bm_price matches 0 run return 0

# Price found — show it via macro
execute store result storage eden:database black_market.temp.sell_price int 1 run scoreboard players get @s ec.bm_price
function evercraft:black_market/sell/show_appraisal with storage eden:database black_market.temp

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.5
