# Mob Crates - Spawn Mythical Crate (Dream Rate >= 17.5 verified)
# Barrel already placed by spawn/mythical.mcfunction

# Fill barrel with mythical loot and set name (gold for mythical)
loot insert ~ ~ ~ loot evercraft:mob_crates/mythical
function evercraft:bosses/totem/roll_crate_drop
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Mythical Mob Crate",color:"gold",bold:true,italic:false}}

# Grant XP to nearest player
experience add @p 500 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 500
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Spawn animation display (mythical skin — align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"mythical",system_tag:"mob_crate",plot_start:30,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NzEzNSwKICAicHJvZmlsZUlkIiA6ICI3OThlZWM3OGYzNGU0MGJhYjlmNjk0ODIwYzM3ZTcxYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJFbENoYW5vbk1DIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzc0ZDNmNDY0NmYxMWRlODY2MDhkZTY0NjM2NmE4YmU4YThlOWQ4MjA3ZjhhZDRjZDU2YzQzOTk2Y2JhZWMwOTUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
