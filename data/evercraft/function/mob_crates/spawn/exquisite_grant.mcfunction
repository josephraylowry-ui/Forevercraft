# Mob Crates - Spawn Exquisite Crate (Dream Rate >= 10 verified)
# Barrel already placed by spawn/exquisite.mcfunction

# Fill barrel with exquisite loot and set name
loot insert ~ ~ ~ loot evercraft:mob_crates/exquisite
function evercraft:bosses/totem/roll_crate_drop
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Exquisite Mob Crate",color:"light_purple",bold:true,italic:false}}

# Grant XP to nearest player
experience add @p 200 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 200
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Spawn animation display (exquisite skin — align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"exquisite",system_tag:"mob_crate",plot_start:25,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NjM1NywKICAicHJvZmlsZUlkIiA6ICJmNzM0MmExODMxZDA0ZDA5ODc4Y2ViOTVmOTUxYTllMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOb3RNMWtzIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzI1ODY4MWY2YmFjZjE4MTVhYTNmMjc4N2E4MjJiNDQwZmJjZmViZTdkZDJjOGEyN2Y5OGRlNTk4NmI3MTBmMGYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}
