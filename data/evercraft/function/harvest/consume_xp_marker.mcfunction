# Harvest XP: Award 1 XP per crop harvested and clear marker item
# Triggered by advancement: evercraft:harvest/xp_reward

advancement revoke @s only evercraft:harvest/xp_reward
clear @s stone_button[custom_data~{ec_harvest_xp:true}] 1
experience add @s 1 points
