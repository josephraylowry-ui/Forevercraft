# ============================================================
# ACHIEVEMENTS — Crate Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Total crates opened ---
execute as @a[scores={ach.crates_opened=5..}] unless entity @s[advancements={evercraft:alternate/crates/common/five_crates=true}] run advancement grant @s only evercraft:alternate/crates/common/five_crates
execute as @a[scores={ach.crates_opened=10..}] unless entity @s[advancements={evercraft:alternate/crates/uncommon/ten_crates=true}] run advancement grant @s only evercraft:alternate/crates/uncommon/ten_crates
execute as @a[scores={ach.crates_opened=20..}] unless entity @s[advancements={evercraft:alternate/crates/uncommon/twenty_crates=true}] run advancement grant @s only evercraft:alternate/crates/uncommon/twenty_crates
execute as @a[scores={ach.crates_opened=50..}] unless entity @s[advancements={evercraft:alternate/crates/rare/fifty_crates=true}] run advancement grant @s only evercraft:alternate/crates/rare/fifty_crates
execute as @a[scores={ach.crates_opened=30..}] unless entity @s[advancements={evercraft:alternate/crates/rare/thirty_crates=true}] run advancement grant @s only evercraft:alternate/crates/rare/thirty_crates
execute as @a[scores={ach.crates_opened=100..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/hundred_crates=true}] run advancement grant @s only evercraft:alternate/crates/ornate/hundred_crates
execute as @a[scores={ach.crates_opened=200..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/two_hundred_crates=true}] run advancement grant @s only evercraft:alternate/crates/ornate/two_hundred_crates
execute as @a[scores={ach.crates_opened=300..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/three_hundred_crates=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/three_hundred_crates
execute as @a[scores={ach.crates_opened=500..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/five_hundred_crates=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/five_hundred_crates
execute as @a[scores={ach.crates_opened=1000..}] unless entity @s[advancements={evercraft:alternate/crates/mythical/thousand_crates=true}] run advancement grant @s only evercraft:alternate/crates/mythical/thousand_crates
execute as @a[scores={ach.crates_opened=2000..}] unless entity @s[advancements={evercraft:alternate/crates/mythical/crate_completionist=true}] run advancement grant @s only evercraft:alternate/crates/mythical/crate_completionist

# --- Fishing crates ---
execute as @a[scores={ach.crates_fishing=3..}] unless entity @s[advancements={evercraft:alternate/crates/uncommon/three_fishing=true}] run advancement grant @s only evercraft:alternate/crates/uncommon/three_fishing
execute as @a[scores={ach.crates_fishing=10..}] unless entity @s[advancements={evercraft:alternate/crates/rare/ten_fishing=true}] run advancement grant @s only evercraft:alternate/crates/rare/ten_fishing
execute as @a[scores={ach.crates_fishing=25..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/twenty_five_fishing=true}] run advancement grant @s only evercraft:alternate/crates/ornate/twenty_five_fishing
execute as @a[scores={ach.crates_fishing=50..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/fifty_fishing=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/fifty_fishing

# --- Harvest crates ---
execute as @a[scores={ach.crates_harvest=3..}] unless entity @s[advancements={evercraft:alternate/crates/uncommon/three_harvest=true}] run advancement grant @s only evercraft:alternate/crates/uncommon/three_harvest
execute as @a[scores={ach.crates_harvest=10..}] unless entity @s[advancements={evercraft:alternate/crates/rare/ten_harvest=true}] run advancement grant @s only evercraft:alternate/crates/rare/ten_harvest
execute as @a[scores={ach.crates_harvest=25..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/twenty_five_harvest=true}] run advancement grant @s only evercraft:alternate/crates/ornate/twenty_five_harvest
execute as @a[scores={ach.crates_harvest=50..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/fifty_harvest=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/fifty_harvest

# --- Mining crates ---
execute as @a[scores={ach.crates_mining=3..}] unless entity @s[advancements={evercraft:alternate/crates/uncommon/three_mining=true}] run advancement grant @s only evercraft:alternate/crates/uncommon/three_mining
execute as @a[scores={ach.crates_mining=10..}] unless entity @s[advancements={evercraft:alternate/crates/rare/ten_mining=true}] run advancement grant @s only evercraft:alternate/crates/rare/ten_mining
execute as @a[scores={ach.crates_mining=25..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/twenty_five_mining=true}] run advancement grant @s only evercraft:alternate/crates/ornate/twenty_five_mining
execute as @a[scores={ach.crates_mining=50..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/fifty_mining=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/fifty_mining

# --- Mob crates ---
execute as @a[scores={ach.crates_mob=3..}] unless entity @s[advancements={evercraft:alternate/crates/uncommon/three_mob=true}] run advancement grant @s only evercraft:alternate/crates/uncommon/three_mob
execute as @a[scores={ach.crates_mob=10..}] unless entity @s[advancements={evercraft:alternate/crates/rare/ten_mob=true}] run advancement grant @s only evercraft:alternate/crates/rare/ten_mob
execute as @a[scores={ach.crates_mob=25..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/twenty_five_mob=true}] run advancement grant @s only evercraft:alternate/crates/ornate/twenty_five_mob
execute as @a[scores={ach.crates_mob=50..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/fifty_mob=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/fifty_mob

# --- Structure crates ---
execute as @a[scores={ach.crates_structure=10..}] unless entity @s[advancements={evercraft:alternate/crates/rare/ten_structure=true}] run advancement grant @s only evercraft:alternate/crates/rare/ten_structure
execute as @a[scores={ach.crates_structure=25..}] unless entity @s[advancements={evercraft:alternate/crates/ornate/twenty_five_structure=true}] run advancement grant @s only evercraft:alternate/crates/ornate/twenty_five_structure
execute as @a[scores={ach.crates_structure=50..}] unless entity @s[advancements={evercraft:alternate/crates/exquisite/fifty_structure=true}] run advancement grant @s only evercraft:alternate/crates/exquisite/fifty_structure
