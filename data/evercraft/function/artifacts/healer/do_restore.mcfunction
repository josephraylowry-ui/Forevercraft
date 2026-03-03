# Healer Artifacts — Delayed Item Restore
# Runs 1 tick after consume_item fires, after the game has removed the consumed item
# ec.hl_restore_hand: 1 = mainhand, 0 = offhand
# ec.hl_restore_id: 1-11 artifact index

tag @s remove ec.hl_restore

# === MAINHAND RESTORES ===
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 1 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/common/medicinal_bandages
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 2 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/common/herbal_poultice
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 3 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/uncommon/smelling_salts
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 4 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/uncommon/soothing_balm
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 5 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/rare/mending_chalice
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 6 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/rare/warding_incense
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 7 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/ornate/phoenix_plume
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 8 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/ornate/radiant_censer
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 9 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/exquisite/celestial_lotus
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 10 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/mythical/endless_ambrosia
execute if score @s ec.hl_restore_hand matches 1 if score @s ec.hl_restore_id matches 11 run loot replace entity @s weapon.mainhand loot evercraft:artifacts/mythical/tears_of_world_tree

# === OFFHAND RESTORES ===
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 1 run loot replace entity @s weapon.offhand loot evercraft:artifacts/common/medicinal_bandages
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 2 run loot replace entity @s weapon.offhand loot evercraft:artifacts/common/herbal_poultice
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 3 run loot replace entity @s weapon.offhand loot evercraft:artifacts/uncommon/smelling_salts
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 4 run loot replace entity @s weapon.offhand loot evercraft:artifacts/uncommon/soothing_balm
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 5 run loot replace entity @s weapon.offhand loot evercraft:artifacts/rare/mending_chalice
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 6 run loot replace entity @s weapon.offhand loot evercraft:artifacts/rare/warding_incense
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 7 run loot replace entity @s weapon.offhand loot evercraft:artifacts/ornate/phoenix_plume
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 8 run loot replace entity @s weapon.offhand loot evercraft:artifacts/ornate/radiant_censer
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 9 run loot replace entity @s weapon.offhand loot evercraft:artifacts/exquisite/celestial_lotus
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 10 run loot replace entity @s weapon.offhand loot evercraft:artifacts/mythical/endless_ambrosia
execute if score @s ec.hl_restore_hand matches 0 if score @s ec.hl_restore_id matches 11 run loot replace entity @s weapon.offhand loot evercraft:artifacts/mythical/tears_of_world_tree
