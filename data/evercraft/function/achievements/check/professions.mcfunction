# ============================================================
# ACHIEVEMENTS — Profession Milestone Checks
# Called every 5s from achievements/tick.mcfunction
# ============================================================

# --- Trades completed ---
execute as @a[scores={ach.adj_trade=10..}] unless entity @s[advancements={evercraft:alternate/professions/common/ten_trades=true}] run advancement grant @s only evercraft:alternate/professions/common/ten_trades
execute as @a[scores={ach.adj_trade=50..}] unless entity @s[advancements={evercraft:alternate/professions/uncommon/fifty_trades=true}] run advancement grant @s only evercraft:alternate/professions/uncommon/fifty_trades
execute as @a[scores={ach.adj_trade=100..}] unless entity @s[advancements={evercraft:alternate/professions/uncommon/hundred_trades=true}] run advancement grant @s only evercraft:alternate/professions/uncommon/hundred_trades
execute as @a[scores={ach.adj_trade=200..}] unless entity @s[advancements={evercraft:alternate/professions/rare/two_hundred_trades=true}] run advancement grant @s only evercraft:alternate/professions/rare/two_hundred_trades
execute as @a[scores={ach.adj_trade=500..}] unless entity @s[advancements={evercraft:alternate/professions/ornate/five_hundred_trades=true}] run advancement grant @s only evercraft:alternate/professions/ornate/five_hundred_trades
execute as @a[scores={ach.adj_trade=1000..}] unless entity @s[advancements={evercraft:alternate/professions/ornate/thousand_trades=true}] run advancement grant @s only evercraft:alternate/professions/ornate/thousand_trades
execute as @a[scores={ach.adj_trade=2000..}] unless entity @s[advancements={evercraft:alternate/professions/exquisite/two_thousand_trades=true}] run advancement grant @s only evercraft:alternate/professions/exquisite/two_thousand_trades
execute as @a[scores={ach.adj_trade=5000..}] unless entity @s[advancements={evercraft:alternate/professions/exquisite/five_thousand_trades=true}] run advancement grant @s only evercraft:alternate/professions/exquisite/five_thousand_trades
execute as @a[scores={ach.adj_trade=10000..}] unless entity @s[advancements={evercraft:alternate/professions/mythical/profession_completionist=true}] run advancement grant @s only evercraft:alternate/professions/mythical/profession_completionist
