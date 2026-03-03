# ============================================================
# Cook Dispatch — Runs as the player
# #ck_slot ec.temp = which recipe slot (0-5) was clicked
# Verifies ingredients, clears them, gives meal, and refreshes GUI
# ============================================================

# Double Portion (P2): 15% chance to preserve ingredients
tag @s remove CK.FreeCook
execute if score @s adv.pa_culi2 matches 1 store result score #free_roll ec.temp run random value 1..100
execute if score @s adv.pa_culi2 matches 1 if score #free_roll ec.temp matches 1..15 run tag @s add CK.FreeCook

# Dispatch to category-specific cook function
scoreboard players set #ck_ok ec.temp 1
execute if score @s ec.ck_cat matches 0 run function evercraft:cooking/recipes/cook_combat
execute if score @s ec.ck_cat matches 1 run function evercraft:cooking/recipes/cook_mining
execute if score @s ec.ck_cat matches 2 run function evercraft:cooking/recipes/cook_fortune
execute if score @s ec.ck_cat matches 3 run function evercraft:cooking/recipes/cook_wayfarer
execute if score @s ec.ck_cat matches 4 run function evercraft:cooking/recipes/cook_delicacy
execute if score @s ec.ck_cat matches 5 run function evercraft:cooking/recipes/cook_seasonal
execute if score @s ec.ck_cat matches 6 run function evercraft:cooking/recipes/cook_treats

# If cook failed (missing ingredients), stop here
execute if score #ck_ok ec.temp matches 0 run return run tellraw @s [{text:"[Kitchen] ",color:"gold"},{text:"You're missing ingredients!",color:"red"}]

# Double Portion feedback
execute if entity @s[tag=CK.FreeCook] run tellraw @s [{text:"[Double Portion] ",color:"green"},{text:"Ingredients preserved!",color:"yellow"}]
tag @s remove CK.FreeCook

# Common post-cook actions
scoreboard players add @s adv.stat_cook 2
playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0.3 0.2 0.3 0.01 5

# Track for achievements
scoreboard players add @s ach.meals_cooked 1
function evercraft:milestones/increment/recipe_cooked

# Per-category mastery tracking
execute if score @s ec.ck_cat matches 0 run scoreboard players add @s ck.m_combat 1
execute if score @s ec.ck_cat matches 1 run scoreboard players add @s ck.m_mining 1
execute if score @s ec.ck_cat matches 2 run scoreboard players add @s ck.m_fortune 1
execute if score @s ec.ck_cat matches 3 run scoreboard players add @s ck.m_wayfarer 1
execute if score @s ec.ck_cat matches 4 run scoreboard players add @s ck.m_delicacy 1
execute if score @s ec.ck_cat matches 5 run scoreboard players add @s ck.m_seasonal 1
execute if score @s ec.ck_cat matches 6 run scoreboard players add @s ck.m_treats 1
function evercraft:cooking/mastery/check

# Mark recipe as discovered (first-time cook announcement)
function evercraft:cooking/discovery/mark_slot

# Refresh GUI to update ingredient availability
function evercraft:cooking/gui/refresh
