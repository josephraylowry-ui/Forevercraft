# Javelin Class — Hoplite Sub-Class Check
# Sets ec.jv_hoplite=1 if player has a tank shield in offhand

scoreboard players set @s ec.jv_hoplite 0
execute if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run scoreboard players set @s ec.jv_hoplite 1
