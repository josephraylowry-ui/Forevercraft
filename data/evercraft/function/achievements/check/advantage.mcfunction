# ============================================================
# ACHIEVEMENTS — Advantage Tree Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Trees unlocked ---
execute as @a[scores={ach.trees_unlocked=3..}] unless entity @s[advancements={evercraft:alternate/advantage/common/three_trees=true}] run advancement grant @s only evercraft:alternate/advantage/common/three_trees
execute as @a[scores={ach.trees_unlocked=5..}] unless entity @s[advancements={evercraft:alternate/advantage/uncommon/five_trees=true}] run advancement grant @s only evercraft:alternate/advantage/uncommon/five_trees
execute as @a[scores={ach.trees_unlocked=8..}] unless entity @s[advancements={evercraft:alternate/advantage/uncommon/eight_trees=true}] run advancement grant @s only evercraft:alternate/advantage/uncommon/eight_trees
execute as @a[scores={ach.trees_unlocked=13..}] unless entity @s[advancements={evercraft:alternate/advantage/rare/all_thirteen=true}] run advancement grant @s only evercraft:alternate/advantage/rare/all_thirteen

# --- Total levels spent ---
execute as @a[scores={ach.total_levels=100..}] unless entity @s[advancements={evercraft:alternate/advantage/common/hundred_levels_spent=true}] run advancement grant @s only evercraft:alternate/advantage/common/hundred_levels_spent
execute as @a[scores={ach.total_levels=500..}] unless entity @s[advancements={evercraft:alternate/advantage/uncommon/five_hundred_levels=true}] run advancement grant @s only evercraft:alternate/advantage/uncommon/five_hundred_levels
execute as @a[scores={ach.total_levels=2000..}] unless entity @s[advancements={evercraft:alternate/advantage/rare/two_thousand_levels=true}] run advancement grant @s only evercraft:alternate/advantage/rare/two_thousand_levels
execute as @a[scores={ach.total_levels=10000..}] unless entity @s[advancements={evercraft:alternate/advantage/ornate/ten_thousand_levels=true}] run advancement grant @s only evercraft:alternate/advantage/ornate/ten_thousand_levels
execute as @a[scores={ach.total_levels=50000..}] unless entity @s[advancements={evercraft:alternate/advantage/exquisite/fifty_thousand_levels=true}] run advancement grant @s only evercraft:alternate/advantage/exquisite/fifty_thousand_levels
execute as @a[scores={ach.total_levels=100000..}] unless entity @s[advancements={evercraft:alternate/advantage/mythical/hundred_thousand_levels=true}] run advancement grant @s only evercraft:alternate/advantage/mythical/hundred_thousand_levels

# --- Surge triggers ---
execute as @a[scores={ach.surge_triggers=1000..}] unless entity @s[advancements={evercraft:alternate/advantage/exquisite/thousand_surges=true}] run advancement grant @s only evercraft:alternate/advantage/exquisite/thousand_surges

# --- Dodge count ---
execute as @a[scores={ach.dodge_count=100..}] unless entity @s[advancements={evercraft:alternate/advantage/ornate/hundred_dodges=true}] run advancement grant @s only evercraft:alternate/advantage/ornate/hundred_dodges
execute as @a[scores={ach.dodge_count=1000..}] unless entity @s[advancements={evercraft:alternate/advantage/exquisite/thousand_dodges=true}] run advancement grant @s only evercraft:alternate/advantage/exquisite/thousand_dodges
