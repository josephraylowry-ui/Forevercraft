# World Boss — Give rewards to a single participant
# Called as each player tagged wb.participant

# Achievement tracking
scoreboard players add @s ach.boss_kills 1
function evercraft:milestones/increment/boss_killed

# Per-boss kill counter
execute if score #wb_boss_id ec.var matches 1 run scoreboard players add @s wb.k1 1
execute if score #wb_boss_id ec.var matches 2 run scoreboard players add @s wb.k2 1
execute if score #wb_boss_id ec.var matches 3 run scoreboard players add @s wb.k3 1
execute if score #wb_boss_id ec.var matches 4 run scoreboard players add @s wb.k4 1
execute if score #wb_boss_id ec.var matches 5 run scoreboard players add @s wb.k5 1
execute if score #wb_boss_id ec.var matches 6 run scoreboard players add @s wb.k6 1
execute if score #wb_boss_id ec.var matches 7 run scoreboard players add @s wb.k7 1
execute if score #wb_boss_id ec.var matches 8 run scoreboard players add @s wb.k8 1
execute if score #wb_boss_id ec.var matches 9 run scoreboard players add @s wb.k9 1
execute if score #wb_boss_id ec.var matches 10 run scoreboard players add @s wb.k10 1
execute if score #wb_boss_id ec.var matches 11 run scoreboard players add @s wb.k11 1

# XP reward: 500
experience add @s 500 points
execute if score @s adv.victorian matches 1.. run scoreboard players set #base_crate_xp adv.temp 500
execute if score @s adv.victorian matches 1.. run function evercraft:advantage/victorian/apply_bonus

# VFX
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.2
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1.0

# ============================================================================
# CRATE REWARD — Rare minimum, DR-scaled upward, barrel item to inventory
# ============================================================================
execute store result score #wb_temp ec.var run attribute @s luck get 10

# Mythical: DR >= 50.0 (500)
execute if score #wb_temp ec.var matches 500.. run function evercraft:util/give_quest_crate {tier:"mythical"}
execute if score #wb_temp ec.var matches 500.. run tellraw @s [{text:"  ",color:"dark_gray"},{text:"★ ",color:"light_purple"},{text:"Mythical Crate received!",color:"light_purple"}]

# Exquisite: DR >= 40.0 (400)
execute unless score #wb_temp ec.var matches 500.. if score #wb_temp ec.var matches 400.. run function evercraft:util/give_quest_crate {tier:"exquisite"}
execute unless score #wb_temp ec.var matches 500.. if score #wb_temp ec.var matches 400.. run tellraw @s [{text:"  ",color:"dark_gray"},{text:"★ ",color:"light_purple"},{text:"Exquisite Crate received!",color:"light_purple"}]

# Ornate: DR >= 30.0 (300)
execute unless score #wb_temp ec.var matches 400.. if score #wb_temp ec.var matches 300.. run function evercraft:util/give_quest_crate {tier:"ornate"}
execute unless score #wb_temp ec.var matches 400.. if score #wb_temp ec.var matches 300.. run tellraw @s [{text:"  ",color:"dark_gray"},{text:"★ ",color:"gold"},{text:"Ornate Crate received!",color:"gold"}]

# Rare: default (below DR 30)
execute unless score #wb_temp ec.var matches 300.. run function evercraft:util/give_quest_crate {tier:"rare"}
execute unless score #wb_temp ec.var matches 300.. run tellraw @s [{text:"  ",color:"dark_gray"},{text:"★ ",color:"aqua"},{text:"Rare Crate received!",color:"aqua"}]

# ============================================================================
# ARTIFACT — Guaranteed for last-hit, 25% for others
# ============================================================================

# Last-hit player: guaranteed artifact
execute if entity @s[tag=wb.last_hit] run function evercraft:bosses/rewards/give_exclusive
execute if entity @s[tag=wb.last_hit] run tellraw @s [{text:"  ★ ",color:"gold"},{text:"BOSS EXCLUSIVE DROP! ",color:"light_purple",bold:true},{text:"(Guaranteed — Final Blow)",color:"gray"}]

# Other participants: 25% chance
execute unless entity @s[tag=wb.last_hit] store result score #wb_temp2 ec.var run random value 1..4
execute unless entity @s[tag=wb.last_hit] if score #wb_temp2 ec.var matches 1 run function evercraft:bosses/rewards/give_exclusive
execute unless entity @s[tag=wb.last_hit] if score #wb_temp2 ec.var matches 1 run tellraw @s [{text:"  ★ ",color:"gold"},{text:"BOSS EXCLUSIVE DROP!",color:"light_purple",bold:true}]

# ============================================================================
# TITLE CHECK — Milestone unlocks
# ============================================================================
function evercraft:bosses/titles/check_unlocks
