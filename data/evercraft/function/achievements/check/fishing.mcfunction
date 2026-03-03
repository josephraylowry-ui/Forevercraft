# ============================================================
# ACHIEVEMENTS — Fishing Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# Uses minecraft.custom:minecraft.fish_caught stat scoreboard
# ============================================================

# NOTE: Most fishing achievements are event-based (granted inline).
# Threshold-based ones use ach.fish_caught scoreboard:
execute as @a[scores={ach.fish_caught=10..}] unless entity @s[advancements={evercraft:alternate/fishing/common/ten_fish=true}] run advancement grant @s only evercraft:alternate/fishing/common/ten_fish
execute as @a[scores={ach.fish_caught=25..}] unless entity @s[advancements={evercraft:alternate/fishing/common/twenty_five_fish=true}] run advancement grant @s only evercraft:alternate/fishing/common/twenty_five_fish
execute as @a[scores={ach.fish_caught=50..}] unless entity @s[advancements={evercraft:alternate/fishing/uncommon/fifty_fish=true}] run advancement grant @s only evercraft:alternate/fishing/uncommon/fifty_fish
execute as @a[scores={ach.fish_caught=100..}] unless entity @s[advancements={evercraft:alternate/fishing/uncommon/hundred_fish=true}] run advancement grant @s only evercraft:alternate/fishing/uncommon/hundred_fish
execute as @a[scores={ach.fish_caught=200..}] unless entity @s[advancements={evercraft:alternate/fishing/rare/two_hundred_fish=true}] run advancement grant @s only evercraft:alternate/fishing/rare/two_hundred_fish
execute as @a[scores={ach.fish_caught=500..}] unless entity @s[advancements={evercraft:alternate/fishing/rare/five_hundred_fish=true}] run advancement grant @s only evercraft:alternate/fishing/rare/five_hundred_fish
execute as @a[scores={ach.fish_caught=1000..}] unless entity @s[advancements={evercraft:alternate/fishing/ornate/thousand_fish=true}] run advancement grant @s only evercraft:alternate/fishing/ornate/thousand_fish
execute as @a[scores={ach.fish_caught=2000..}] unless entity @s[advancements={evercraft:alternate/fishing/ornate/two_thousand_fish=true}] run advancement grant @s only evercraft:alternate/fishing/ornate/two_thousand_fish
execute as @a[scores={ach.fish_caught=5000..}] unless entity @s[advancements={evercraft:alternate/fishing/exquisite/five_thousand_fish=true}] run advancement grant @s only evercraft:alternate/fishing/exquisite/five_thousand_fish
execute as @a[scores={ach.fish_caught=10000..}] unless entity @s[advancements={evercraft:alternate/fishing/exquisite/ten_thousand_fish=true}] run advancement grant @s only evercraft:alternate/fishing/exquisite/ten_thousand_fish
execute as @a[scores={ach.fish_caught=50000..}] unless entity @s[advancements={evercraft:alternate/fishing/mythical/fishing_completionist=true}] run advancement grant @s only evercraft:alternate/fishing/mythical/fishing_completionist

# --- Treasure count ---
execute as @a[scores={ach.fish_treasure=5..}] unless entity @s[advancements={evercraft:alternate/fishing/uncommon/five_treasure=true}] run advancement grant @s only evercraft:alternate/fishing/uncommon/five_treasure
execute as @a[scores={ach.fish_treasure=20..}] unless entity @s[advancements={evercraft:alternate/fishing/rare/twenty_treasure=true}] run advancement grant @s only evercraft:alternate/fishing/rare/twenty_treasure
execute as @a[scores={ach.fish_treasure=25..}] unless entity @s[advancements={evercraft:alternate/fishing/ornate/twenty_five_treasure=true}] run advancement grant @s only evercraft:alternate/fishing/ornate/twenty_five_treasure
execute as @a[scores={ach.fish_treasure=50..}] unless entity @s[advancements={evercraft:alternate/fishing/exquisite/fifty_treasure=true}] run advancement grant @s only evercraft:alternate/fishing/exquisite/fifty_treasure
execute as @a[scores={ach.fish_treasure=100..}] unless entity @s[advancements={evercraft:alternate/fishing/exquisite/hundred_treasure=true}] run advancement grant @s only evercraft:alternate/fishing/exquisite/hundred_treasure
execute as @a[scores={ach.fish_treasure=1000..}] unless entity @s[advancements={evercraft:alternate/fishing/mythical/fishing_mastery=true}] run advancement grant @s only evercraft:alternate/fishing/mythical/fishing_mastery
