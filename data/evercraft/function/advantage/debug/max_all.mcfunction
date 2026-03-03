# Debug — Set all advantage trees to max level and apply effects
scoreboard players set @s adv.agility 25
scoreboard players set @s adv.dexterity 25
scoreboard players set @s adv.evasion 25
scoreboard players set @s adv.stealth 25
scoreboard players set @s adv.vitality 25
scoreboard players set @s adv.taskmaster 25
scoreboard players set @s adv.beastmaster 25
scoreboard players set @s adv.victorian 25
scoreboard players set @s adv.fishing 25
scoreboard players set @s adv.mining 25
scoreboard players set @s adv.gathering 25
scoreboard players set @s adv.blacksmith 25
scoreboard players set @s adv.explorer 25
scoreboard players set @s adv.culinary 25

# Apply attribute-based effects
function evercraft:advantage/effects/reapply_all

# Set all synergy flags (trees are maxed so all synergies qualify)
scoreboard players set @s adv.syn_combat 1
scoreboard players set @s adv.syn_gather 1
scoreboard players set @s adv.syn_utility 1
scoreboard players set @s adv.syn_support 1

# Set all prestige to max
scoreboard players set @s adv.pres_agil 3
scoreboard players set @s adv.pres_dext 3
scoreboard players set @s adv.pres_evas 3
scoreboard players set @s adv.pres_stea 3
scoreboard players set @s adv.pres_vita 3
scoreboard players set @s adv.pres_task 3
scoreboard players set @s adv.pres_beas 3
scoreboard players set @s adv.pres_vict 3
scoreboard players set @s adv.pres_fish 3
scoreboard players set @s adv.pres_mine 3
scoreboard players set @s adv.pres_gath 3
scoreboard players set @s adv.pres_blac 3
scoreboard players set @s adv.pres_expl 3
scoreboard players set @s adv.pres_culi 3
scoreboard players set @s adv.pres_total 42

# Enable all prestige ability flags
scoreboard players set @s adv.pa_agil1 1
scoreboard players set @s adv.pa_agil2 1
scoreboard players set @s adv.pa_agil3 1
scoreboard players set @s adv.pa_dex1 1
scoreboard players set @s adv.pa_dex2 1
scoreboard players set @s adv.pa_evas1 1
scoreboard players set @s adv.pa_evas2 1
scoreboard players set @s adv.pa_evas3 1
scoreboard players set @s adv.pa_stea1 1
scoreboard players set @s adv.pa_stea2 1
scoreboard players set @s adv.pa_stea3 1
scoreboard players set @s adv.pa_vita1 1
scoreboard players set @s adv.pa_vita2 1
scoreboard players set @s adv.pa_task1 1
scoreboard players set @s adv.pa_task2 1
scoreboard players set @s adv.pa_task3 1
scoreboard players set @s adv.pa_beas1 1
scoreboard players set @s adv.pa_beas2 1
scoreboard players set @s adv.pa_beas3 1
scoreboard players set @s adv.pa_vict1 1
scoreboard players set @s adv.pa_vict2 1
scoreboard players set @s adv.pa_vict3 1
scoreboard players set @s adv.pa_fish1 1
scoreboard players set @s adv.pa_fish2 1
scoreboard players set @s adv.pa_fish3 1
scoreboard players set @s adv.pa_mine1 1
scoreboard players set @s adv.pa_mine2 1
scoreboard players set @s adv.pa_mine3 1
scoreboard players set @s adv.pa_gath1 1
scoreboard players set @s adv.pa_gath2 1
scoreboard players set @s adv.pa_gath3 1
scoreboard players set @s adv.pa_blac1 1
scoreboard players set @s adv.pa_blac2 1
scoreboard players set @s adv.pa_blac3 1
scoreboard players set @s adv.pa_expl1 1
scoreboard players set @s adv.pa_expl2 1
scoreboard players set @s adv.pa_expl3 1
scoreboard players set @s adv.pa_culi1 1
scoreboard players set @s adv.pa_culi2 1
scoreboard players set @s adv.pa_culi3 1

# Apply prestige ability attribute modifiers (reapply_all handles most)
# Dexterity P2: Dual Wield — +25% attack speed
attribute @s attack_speed modifier remove evercraft:adv_pres_dex2
attribute @s attack_speed modifier add evercraft:adv_pres_dex2 0.25 add_multiplied_base
# Vitality P3: Iron Will — Permanent Resistance I (also handled by reapply_all)
effect give @s minecraft:resistance infinite 0 true

# Give water nets (3 total — one per fishing prestige rank)
give @s barrel[custom_name={text:"Water Net",color:"aqua",italic:false},enchantment_glint_override=true,custom_data={water_net:1b}] 3

# Give some Tree Tokens for testing
give @s minecraft:prismarine_crystals[minecraft:custom_data={tree_token:1b},minecraft:custom_name={text:"Tree Token",color:"green",italic:false}] 64

tellraw @s [{text:"[Debug] ",color:"yellow"},{text:"All advantage trees set to MAX (25) + prestige 3 + all abilities + synergies + 64 tokens",color:"green"}]
