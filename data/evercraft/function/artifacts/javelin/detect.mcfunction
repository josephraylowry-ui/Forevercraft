# Javelin Class — Detect new equip
# Run as player who just equipped a javelin trident

tag @s add ec.jv_active

# === TIER DETECTION ===
# Default to uncommon (tier 2) then upgrade
scoreboard players set @s ec.jv_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.jv_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.jv_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.jv_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.jv_tier 6

# === ARTIFACT ID DETECTION ===
scoreboard players set @s ec.jv_id 0
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:1}] run scoreboard players set @s ec.jv_id 1
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:2}] run scoreboard players set @s ec.jv_id 2
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:3}] run scoreboard players set @s ec.jv_id 3
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:4}] run scoreboard players set @s ec.jv_id 4
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:5}] run scoreboard players set @s ec.jv_id 5
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:6}] run scoreboard players set @s ec.jv_id 6
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:7}] run scoreboard players set @s ec.jv_id 7
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:8}] run scoreboard players set @s ec.jv_id 8
execute if items entity @s weapon.mainhand *[custom_data~{javelin_id:9}] run scoreboard players set @s ec.jv_id 9

# === HOPLITE CHECK ===
function evercraft:artifacts/javelin/hoplite_check

# === FEEDBACK ===
playsound minecraft:item.trident.return player @s ~ ~ ~ 0.6 1.5
title @s actionbar [{"text":"Javelin Class","color":"aqua","bold":true},{"text":" — ready","color":"white","bold":false}]
