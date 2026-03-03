# ============================================================
# Complete Tier 4 (Commission) Quest
# ============================================================

scoreboard players set @s ec.quest_id_4 0
scoreboard players set @s ec.quest_prog_4 0
scoreboard players set @s ec.quest_done_4 1
scoreboard players add @s ec.village_rep 250
experience add @s 250 points
execute if score #cal_prosperity ec.var matches 1 run experience add @s 125 points
scoreboard players add @s adv.stat_quests 1

# Taskmaster bonus: +4% XP/rep per level
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_xp adv.temp 250
execute if score @s adv.taskmaster matches 1.. run scoreboard players set #base_quest_rep adv.temp 250
execute if score @s adv.taskmaster matches 1.. run function evercraft:advantage/taskmaster/apply_bonus

# Village specialization bonus (+25% rep at specialized villages)
scoreboard players set #vs_base_rep vs.temp 250
function evercraft:village/quest_bonus

# Save updated reputation to village-specific storage
function evercraft:quests/reputation/save_village_rep

# Check inventory space before giving crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Grant Ornate Quest Crate
execute if score #inv_full ec.var matches 0 run give @s minecraft:barrel[minecraft:custom_name={text:"Ornate Quest Crate",color:"dark_purple",italic:false},minecraft:container_loot={loot_table:"evercraft:crates/ornate"},minecraft:lore=[{text:"A treasured gift from grateful villagers.",color:"dark_gray",italic:true}]] 1
execute if score #inv_full ec.var matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Ornate Quest Crate",color:"dark_purple",italic:false},container_loot:{loot_table:"evercraft:crates/ornate"},lore:[{text:"A treasured gift from grateful villagers.",color:"dark_gray",italic:true}]}},PickupDelay:0s}
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

function evercraft:quests/reputation/check_rank

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.2 40

tellraw @s ["",{text:"[Quests] ",color:"gold"},{text:"Commission Complete! ",color:"dark_purple"},{text:"+250 XP ",color:"green"},{text:"+250 REP",color:"aqua"}]

# Achievement tracking
scoreboard players add @s ach.quests_done 1
function evercraft:milestones/increment/quest_done
scoreboard players add @s ach.quest_rep 250
scoreboard players add @s ach.quest_xp 250
advancement grant @s only evercraft:alternate/quests/common/first_quest
advancement grant @s only evercraft:alternate/quests/common/ornate_quest

# Daily first-quest bonus (+50 XP for first quest each day)
execute if score @s ec.daily_quest matches 0 run experience add @s 50 points
execute if score @s ec.daily_quest matches 0 run tellraw @s [{text:"  ★ ",color:"yellow"},{text:"Daily Bonus! ",color:"yellow",bold:true},{text:"+50 XP",color:"green"}]
scoreboard players set @s ec.daily_quest 1
