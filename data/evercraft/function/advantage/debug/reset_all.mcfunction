# Debug — Reset all advantage trees to 0 and remove all modifiers
scoreboard players set @s adv.agility 0
scoreboard players set @s adv.dexterity 0
scoreboard players set @s adv.evasion 0
scoreboard players set @s adv.stealth 0
scoreboard players set @s adv.vitality 0
scoreboard players set @s adv.taskmaster 0
scoreboard players set @s adv.beastmaster 0
scoreboard players set @s adv.victorian 0
scoreboard players set @s adv.fishing 0
scoreboard players set @s adv.mining 0
scoreboard players set @s adv.gathering 0
scoreboard players set @s adv.blacksmith 0
scoreboard players set @s adv.explorer 0

# Remove all attribute modifiers (base + prestige)
attribute @s movement_speed modifier remove evercraft:adv_agility
attribute @s movement_speed modifier remove evercraft:adv_stealth
attribute @s max_health modifier remove evercraft:adv_vitality
attribute @s block_interaction_range modifier remove evercraft:adv_dex_block
attribute @s entity_interaction_range modifier remove evercraft:adv_dex_entity
# Prestige retained modifiers
attribute @s movement_speed modifier remove evercraft:adv_pres_agility
attribute @s block_interaction_range modifier remove evercraft:adv_pres_dexterity
attribute @s entity_interaction_range modifier remove evercraft:adv_pres_dexterity
attribute @s sneaking_speed modifier remove evercraft:adv_pres_stealth
attribute @s max_health modifier remove evercraft:adv_pres_vitality
# Dexterity P3 extended reach
attribute @s block_interaction_range modifier remove evercraft:adv_pres_dex3
attribute @s entity_interaction_range modifier remove evercraft:adv_pres_dex3
# Vitality P3 permanent resistance
effect clear @s minecraft:resistance
# Dexterity P2 attack speed (Dual Wield)
attribute @s attack_speed modifier remove evercraft:adv_pres_dex2

# Reset prestige ability flags
scoreboard players set @s adv.pa_agil1 0
scoreboard players set @s adv.pa_agil2_cd 0
scoreboard players set @s adv.pa_agil3_cd 0
scoreboard players set @s adv.pa_dex1 0
scoreboard players set @s adv.pa_evas3_tm 0
scoreboard players set @s adv.pa_stea3_tm 0
scoreboard players set @s adv.pa_stea3_cd 0
scoreboard players set @s adv.pa_vita2_cd 0
scoreboard players set @s adv.pa_task1 0
scoreboard players set @s adv.pa_task2 0
scoreboard players set @s adv.pa_task3 0
scoreboard players set @s adv.pa_beas1 0
scoreboard players set @s adv.pa_beas2 0
scoreboard players set @s adv.pa_beas3 0
scoreboard players set @s adv.pa_vict1_sn 0
scoreboard players set @s adv.pa_vict2 0
scoreboard players set @s adv.pa_vict3 0
scoreboard players set @s adv.pa_fish1 0
scoreboard players set @s adv.pa_fish2 0
scoreboard players set @s adv.pa_fish3 0
scoreboard players set @s adv.pa_cage_ct 0
scoreboard players set @s adv.pa_mine1_tm 0
scoreboard players set @s adv.pa_mine2 0
scoreboard players set @s adv.pa_mine3 0
scoreboard players set @s adv.pa_gath1 0
scoreboard players set @s adv.pa_gath2 0
scoreboard players set @s adv.pa_gath3 0
scoreboard players set @s adv.pa_blac1 0
scoreboard players set @s adv.pa_blac2 0
scoreboard players set @s adv.pa_blac3 0
scoreboard players set @s adv.pa_expl1 0
scoreboard players set @s adv.pa_expl2 0
scoreboard players set @s adv.pa_expl2_cd 0
scoreboard players set @s adv.pa_expl3 0
scoreboard players set @s adv.pa_expl3_cd 0

# Reset expansion scoreboards
scoreboard players set @s adv.syn_combat 0
scoreboard players set @s adv.syn_gather 0
scoreboard players set @s adv.syn_utility 0
scoreboard players set @s adv.syn_support 0
scoreboard players set @s adv.syn_trance 0
scoreboard players set @s adv.syn_shadow 0
scoreboard players set @s adv.syn_shad_cd 0
scoreboard players set @s adv.pres_agil 0
scoreboard players set @s adv.pres_dext 0
scoreboard players set @s adv.pres_evas 0
scoreboard players set @s adv.pres_stea 0
scoreboard players set @s adv.pres_vita 0
scoreboard players set @s adv.pres_task 0
scoreboard players set @s adv.pres_beas 0
scoreboard players set @s adv.pres_vict 0
scoreboard players set @s adv.pres_fish 0
scoreboard players set @s adv.pres_mine 0
scoreboard players set @s adv.pres_gath 0
scoreboard players set @s adv.pres_blac 0
scoreboard players set @s adv.pres_expl 0
scoreboard players set @s adv.pres_total 0
scoreboard players set @s adv.respec_cd 0
scoreboard players set @s adv.cosm_unlock 0
scoreboard players set @s adv.cosm_active 0
scoreboard players set @s adv.chal_id 0
scoreboard players set @s adv.chal_prog 0
scoreboard players set @s adv.chal_tree 0
scoreboard players set @s adv.tokens 0
scoreboard players set @s adv.tok_earned 0
scoreboard players set @s adv.tok_spent 0

# Clear Tree Tokens from inventory
clear @s minecraft:prismarine_crystals[minecraft:custom_data~{tree_token:1b}]

tellraw @s [{text:"[Debug] ",color:"yellow"},{text:"All advantage trees + prestige + expansion systems reset to 0",color:"red"}]
