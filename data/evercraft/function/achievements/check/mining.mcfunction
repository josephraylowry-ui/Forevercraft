# ============================================================
# ACHIEVEMENTS — Mining/Harvest Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- First milestones ---
execute as @a[scores={ach.blocks_mined=1..}] unless entity @s[advancements={evercraft:alternate/mining/common/first_ore=true}] run advancement grant @s only evercraft:alternate/mining/common/first_ore
execute as @a[scores={ach.crops_harvested=1..}] unless entity @s[advancements={evercraft:alternate/mining/common/first_harvest=true}] run advancement grant @s only evercraft:alternate/mining/common/first_harvest

# --- Blocks mined ---
execute as @a[scores={ach.blocks_mined=100..}] unless entity @s[advancements={evercraft:alternate/mining/common/hundred_blocks=true}] run advancement grant @s only evercraft:alternate/mining/common/hundred_blocks
execute as @a[scores={ach.blocks_mined=500..}] unless entity @s[advancements={evercraft:alternate/mining/common/five_hundred_blocks=true}] run advancement grant @s only evercraft:alternate/mining/common/five_hundred_blocks
execute as @a[scores={ach.blocks_mined=1000..}] unless entity @s[advancements={evercraft:alternate/mining/uncommon/thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/uncommon/thousand_blocks
execute as @a[scores={ach.blocks_mined=5000..}] unless entity @s[advancements={evercraft:alternate/mining/uncommon/five_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/uncommon/five_thousand_blocks
execute as @a[scores={ach.blocks_mined=10000..}] unless entity @s[advancements={evercraft:alternate/mining/rare/ten_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/rare/ten_thousand_blocks
execute as @a[scores={ach.blocks_mined=20000..}] unless entity @s[advancements={evercraft:alternate/mining/rare/twenty_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/rare/twenty_thousand_blocks
execute as @a[scores={ach.blocks_mined=50000..}] unless entity @s[advancements={evercraft:alternate/mining/ornate/fifty_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/ornate/fifty_thousand_blocks
execute as @a[scores={ach.blocks_mined=100000..}] unless entity @s[advancements={evercraft:alternate/mining/ornate/hundred_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/ornate/hundred_thousand_blocks
execute as @a[scores={ach.blocks_mined=200000..}] unless entity @s[advancements={evercraft:alternate/mining/exquisite/two_hundred_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/exquisite/two_hundred_thousand_blocks
execute as @a[scores={ach.blocks_mined=500000..}] unless entity @s[advancements={evercraft:alternate/mining/exquisite/five_hundred_thousand_blocks=true}] run advancement grant @s only evercraft:alternate/mining/exquisite/five_hundred_thousand_blocks
execute as @a[scores={ach.blocks_mined=1000000..}] unless entity @s[advancements={evercraft:alternate/mining/mythical/million_blocks=true}] run advancement grant @s only evercraft:alternate/mining/mythical/million_blocks

# --- Crops harvested ---
execute as @a[scores={ach.crops_harvested=100..}] unless entity @s[advancements={evercraft:alternate/mining/common/hundred_crops=true}] run advancement grant @s only evercraft:alternate/mining/common/hundred_crops
execute as @a[scores={ach.crops_harvested=500..}] unless entity @s[advancements={evercraft:alternate/mining/uncommon/five_hundred_crops=true}] run advancement grant @s only evercraft:alternate/mining/uncommon/five_hundred_crops
execute as @a[scores={ach.crops_harvested=1000..}] unless entity @s[advancements={evercraft:alternate/mining/uncommon/thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/uncommon/thousand_crops
execute as @a[scores={ach.crops_harvested=5000..}] unless entity @s[advancements={evercraft:alternate/mining/rare/five_thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/rare/five_thousand_crops
execute as @a[scores={ach.crops_harvested=10000..}] unless entity @s[advancements={evercraft:alternate/mining/rare/ten_thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/rare/ten_thousand_crops
execute as @a[scores={ach.crops_harvested=20000..}] unless entity @s[advancements={evercraft:alternate/mining/ornate/twenty_thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/ornate/twenty_thousand_crops
execute as @a[scores={ach.crops_harvested=50000..}] unless entity @s[advancements={evercraft:alternate/mining/ornate/fifty_thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/ornate/fifty_thousand_crops
execute as @a[scores={ach.crops_harvested=100000..}] unless entity @s[advancements={evercraft:alternate/mining/exquisite/hundred_thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/exquisite/hundred_thousand_crops
execute as @a[scores={ach.crops_harvested=500000..}] unless entity @s[advancements={evercraft:alternate/mining/exquisite/five_hundred_thousand_crops=true}] run advancement grant @s only evercraft:alternate/mining/exquisite/five_hundred_thousand_crops
