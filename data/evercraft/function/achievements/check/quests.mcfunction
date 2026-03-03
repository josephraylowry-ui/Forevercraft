# ============================================================
# ACHIEVEMENTS — Quest Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Quest completion count ---
execute as @a[scores={ach.quests_done=3..}] unless entity @s[advancements={evercraft:alternate/quests/common/three_quests=true}] run advancement grant @s only evercraft:alternate/quests/common/three_quests
execute as @a[scores={ach.quests_done=5..}] unless entity @s[advancements={evercraft:alternate/quests/uncommon/five_quests=true}] run advancement grant @s only evercraft:alternate/quests/uncommon/five_quests
execute as @a[scores={ach.quests_done=10..}] unless entity @s[advancements={evercraft:alternate/quests/uncommon/ten_quests=true}] run advancement grant @s only evercraft:alternate/quests/uncommon/ten_quests
execute as @a[scores={ach.quests_done=15..}] unless entity @s[advancements={evercraft:alternate/quests/rare/fifteen_quests=true}] run advancement grant @s only evercraft:alternate/quests/rare/fifteen_quests
execute as @a[scores={ach.quests_done=20..}] unless entity @s[advancements={evercraft:alternate/quests/rare/twenty_quests=true}] run advancement grant @s only evercraft:alternate/quests/rare/twenty_quests
execute as @a[scores={ach.quests_done=30..}] unless entity @s[advancements={evercraft:alternate/quests/ornate/thirty_quests=true}] run advancement grant @s only evercraft:alternate/quests/ornate/thirty_quests
execute as @a[scores={ach.quests_done=40..}] unless entity @s[advancements={evercraft:alternate/quests/ornate/forty_quests=true}] run advancement grant @s only evercraft:alternate/quests/ornate/forty_quests
execute as @a[scores={ach.quests_done=50..}] unless entity @s[advancements={evercraft:alternate/quests/exquisite/fifty_quests=true}] run advancement grant @s only evercraft:alternate/quests/exquisite/fifty_quests
execute as @a[scores={ach.quests_done=60..}] unless entity @s[advancements={evercraft:alternate/quests/exquisite/sixty_quests=true}] run advancement grant @s only evercraft:alternate/quests/exquisite/sixty_quests
execute as @a[scores={ach.quests_done=75..}] unless entity @s[advancements={evercraft:alternate/quests/mythical/all_quests=true}] run advancement grant @s only evercraft:alternate/quests/mythical/all_quests

# --- Quest reputation total ---
execute as @a[scores={ach.quest_rep=100..}] unless entity @s[advancements={evercraft:alternate/quests/common/hundred_rep=true}] run advancement grant @s only evercraft:alternate/quests/common/hundred_rep
execute as @a[scores={ach.quest_rep=500..}] unless entity @s[advancements={evercraft:alternate/quests/uncommon/five_hundred_rep=true}] run advancement grant @s only evercraft:alternate/quests/uncommon/five_hundred_rep
execute as @a[scores={ach.quest_rep=2000..}] unless entity @s[advancements={evercraft:alternate/quests/rare/two_thousand_rep=true}] run advancement grant @s only evercraft:alternate/quests/rare/two_thousand_rep
execute as @a[scores={ach.quest_rep=10000..}] unless entity @s[advancements={evercraft:alternate/quests/ornate/ten_thousand_rep=true}] run advancement grant @s only evercraft:alternate/quests/ornate/ten_thousand_rep
execute as @a[scores={ach.quest_rep=50000..}] unless entity @s[advancements={evercraft:alternate/quests/exquisite/fifty_thousand_rep=true}] run advancement grant @s only evercraft:alternate/quests/exquisite/fifty_thousand_rep
execute as @a[scores={ach.quest_rep=1000000..}] unless entity @s[advancements={evercraft:alternate/quests/mythical/million_rep=true}] run advancement grant @s only evercraft:alternate/quests/mythical/million_rep

# --- Quest XP earned ---
execute as @a[scores={ach.quest_xp=1000..}] unless entity @s[advancements={evercraft:alternate/quests/uncommon/thousand_quest_xp=true}] run advancement grant @s only evercraft:alternate/quests/uncommon/thousand_quest_xp
execute as @a[scores={ach.quest_xp=5000..}] unless entity @s[advancements={evercraft:alternate/quests/rare/five_thousand_xp=true}] run advancement grant @s only evercraft:alternate/quests/rare/five_thousand_xp
execute as @a[scores={ach.quest_xp=20000..}] unless entity @s[advancements={evercraft:alternate/quests/ornate/twenty_thousand_xp=true}] run advancement grant @s only evercraft:alternate/quests/ornate/twenty_thousand_xp
execute as @a[scores={ach.quest_xp=100000..}] unless entity @s[advancements={evercraft:alternate/quests/exquisite/hundred_thousand_xp=true}] run advancement grant @s only evercraft:alternate/quests/exquisite/hundred_thousand_xp
