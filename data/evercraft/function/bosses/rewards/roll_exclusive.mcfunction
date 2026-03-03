# World Boss — Roll for Boss-Exclusive Artifact
# Called as the killing player
# Base 15% chance (+1% per DR point, cap 35%). Blood Moon: doubled.

# Calculate chance: 15 + DR (integer), capped at 35
execute store result score #wb_temp ec.var run attribute @s luck get 1
scoreboard players add #wb_temp ec.var 15
execute if score #wb_temp ec.var matches 36.. run scoreboard players set #wb_temp ec.var 35

# Blood Moon: double the chance
execute if score #cal_blood_moon ec.var matches 1 run scoreboard players operation #wb_temp ec.var *= #2 adv.temp

# Roll: random 1..100, if <= chance → drop
execute store result score #wb_temp2 ec.var run random value 1..100
execute unless score #wb_temp2 ec.var <= #wb_temp ec.var run return 0

# Drop succeeded — give boss-exclusive artifact by boss_id
tellraw @s [{text:"  ★ ",color:"gold"},{text:"BOSS EXCLUSIVE DROP!",color:"light_purple",bold:true}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 0.8
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Give artifact (inv has space)
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 1 run loot give @s loot evercraft:bosses/exclusive/hollow_king
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 2 run loot give @s loot evercraft:bosses/exclusive/verdant_warden
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 3 run loot give @s loot evercraft:bosses/exclusive/stormforged
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 4 run loot give @s loot evercraft:bosses/exclusive/tidecaller
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 5 run loot give @s loot evercraft:bosses/exclusive/earthshaker
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 6 run loot give @s loot evercraft:bosses/exclusive/nightmare
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 7 run loot give @s loot evercraft:bosses/exclusive/infernal_titan
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 8 run loot give @s loot evercraft:bosses/exclusive/soul_warden
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 9 run loot give @s loot evercraft:bosses/exclusive/crimson_behemoth
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 10 run loot give @s loot evercraft:bosses/exclusive/void_sovereign
execute if score #inv_full ec.var matches 0 if score #wb_boss_id ec.var matches 11 run loot give @s loot evercraft:bosses/exclusive/ender_architect

# Drop artifact at feet (inv full)
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/hollow_king
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 2 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/verdant_warden
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 3 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/stormforged
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 4 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/tidecaller
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 5 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/earthshaker
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 6 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/nightmare
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 7 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/infernal_titan
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 8 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/soul_warden
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 9 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/crimson_behemoth
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 10 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/void_sovereign
execute if score #inv_full ec.var matches 1 if score #wb_boss_id ec.var matches 11 at @s run loot spawn ~ ~ ~ loot evercraft:bosses/exclusive/ender_architect

# Warn if dropped
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your boss artifact was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
