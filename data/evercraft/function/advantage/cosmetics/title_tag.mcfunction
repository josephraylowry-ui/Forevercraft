# Title Tag — Level 10 cosmetic
# Join tree-specific team for colored name prefix

# Leave any existing cosmetic teams first (safe — leaves all title teams)
function evercraft:advantage/cosmetics/leave_teams
function evercraft:advantage/cosmetics/leave_crate_teams
function evercraft:bosses/titles/leave_teams

# Join the team based on cosm_tree
execute if score @s adv.cosm_tree matches 1 run team join adv.cosm_agility @s
execute if score @s adv.cosm_tree matches 2 run team join adv.cosm_dexterity @s
execute if score @s adv.cosm_tree matches 3 run team join adv.cosm_evasion @s
execute if score @s adv.cosm_tree matches 4 run team join adv.cosm_stealth @s
execute if score @s adv.cosm_tree matches 5 run team join adv.cosm_vitality @s
execute if score @s adv.cosm_tree matches 6 run team join adv.cosm_taskmaster @s
execute if score @s adv.cosm_tree matches 7 run team join adv.cosm_beastmaster @s
execute if score @s adv.cosm_tree matches 8 run team join adv.cosm_victorian @s
execute if score @s adv.cosm_tree matches 9 run team join adv.cosm_fishing @s
execute if score @s adv.cosm_tree matches 10 run team join adv.cosm_mining @s
execute if score @s adv.cosm_tree matches 11 run team join adv.cosm_gathering @s
execute if score @s adv.cosm_tree matches 12 run team join adv.cosm_blacksmith @s
execute if score @s adv.cosm_tree matches 13 run team join adv.cosm_explorer @s
execute if score @s adv.cosm_tree matches 14 run team join adv.cosm_culinary @s
