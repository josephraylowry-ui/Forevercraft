# ============================================================
# ACHIEVEMENTS — Armor Set Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Sets equipped count ---
execute as @a[scores={ach.sets_equipped=2..}] unless entity @s[advancements={evercraft:alternate/armor/common/second_set=true}] run advancement grant @s only evercraft:alternate/armor/common/second_set
execute as @a[scores={ach.sets_equipped=3..}] unless entity @s[advancements={evercraft:alternate/armor/uncommon/three_sets=true}] run advancement grant @s only evercraft:alternate/armor/uncommon/three_sets
execute as @a[scores={ach.sets_equipped=5..}] unless entity @s[advancements={evercraft:alternate/armor/uncommon/five_sets=true}] run advancement grant @s only evercraft:alternate/armor/uncommon/five_sets
execute as @a[scores={ach.sets_equipped=10..}] unless entity @s[advancements={evercraft:alternate/armor/rare/ten_sets=true}] run advancement grant @s only evercraft:alternate/armor/rare/ten_sets
execute as @a[scores={ach.sets_equipped=15..}] unless entity @s[advancements={evercraft:alternate/armor/ornate/fifteen_sets=true}] run advancement grant @s only evercraft:alternate/armor/ornate/fifteen_sets
execute as @a[scores={ach.sets_equipped=20..}] unless entity @s[advancements={evercraft:alternate/armor/ornate/twenty_sets=true}] run advancement grant @s only evercraft:alternate/armor/ornate/twenty_sets
execute as @a[scores={ach.sets_equipped=25..}] unless entity @s[advancements={evercraft:alternate/armor/exquisite/twentyfive_sets=true}] run advancement grant @s only evercraft:alternate/armor/exquisite/twentyfive_sets
execute as @a[scores={ach.sets_equipped=27..}] unless entity @s[advancements={evercraft:alternate/armor/mythical/all_twenty_seven_sets=true}] run advancement grant @s only evercraft:alternate/armor/mythical/all_twenty_seven_sets

# --- Set Collector: awarded when all_twenty_seven_sets is earned (same threshold, bonus reward) ---
execute as @a[advancements={evercraft:alternate/armor/mythical/all_twenty_seven_sets=true}] unless entity @s[advancements={evercraft:alternate/armor/mythical/set_collector=true}] run advancement grant @s only evercraft:alternate/armor/mythical/set_collector
