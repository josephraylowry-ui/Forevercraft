# Dream Surge Event — Mob Crate Override (Ornate+ only)
# Called instead of normal common/uncommon/rare mob crate loot during event
# Distribution: Ornate 70%, Exquisite 28%, Mythical 2%
# Run at the mob's position (barrel already placed with Lock:"crate_animating")

# Roll 1-1000
execute store result score #roll ec.temp run random value 1..1000

# Default: Ornate (1-700)
execute if score #roll ec.temp matches 1..700 run loot insert ~ ~ ~ loot evercraft:mob_crates/ornate
execute if score #roll ec.temp matches 1..700 run function evercraft:structures/container/shuffle_barrel
execute if score #roll ec.temp matches 1..700 run data merge block ~ ~ ~ {CustomName:{text:"Ornate Mob Crate",color:"dark_purple",italic:false,bold:true}}
execute if score #roll ec.temp matches 1..700 run function evercraft:crate_anim/spawn_display {tier:"ornate",system_tag:"mob_crate",plot_start:20,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2ODYzNSwKICAicHJvZmlsZUlkIiA6ICJmYjZkM2E5Zjk3MWY0ZTdlYmQ0MjE2Yjk0MjE5NDA3NCIsCiAgInByb2ZpbGVOYW1lIiA6ICJHb2xkZW5BcHBsZUdIRyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hMGFlZDAxZjE4Yjc5MDhjZTBiMTFjNjViMTFjMGE1NjgwMDlmY2IyZWY2NWQ3YThjOTEzN2NkYjY3YTM0YTJkIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}

# Exquisite (701-980) — purple #8c0691
execute if score #roll ec.temp matches 701..980 run loot insert ~ ~ ~ loot evercraft:mob_crates/exquisite
execute if score #roll ec.temp matches 701..980 run function evercraft:structures/container/shuffle_barrel
execute if score #roll ec.temp matches 701..980 run data merge block ~ ~ ~ {CustomName:{text:"Exquisite Mob Crate",color:"#8c0691",italic:false,bold:true}}
execute if score #roll ec.temp matches 701..980 run function evercraft:crate_anim/spawn_display {tier:"exquisite",system_tag:"mob_crate",plot_start:25,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NjM1NywKICAicHJvZmlsZUlkIiA6ICJmNzM0MmExODMxZDA0ZDA5ODc4Y2ViOTVmOTUxYTllMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOb3RNMWtzIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzI1ODY4MWY2YmFjZjE4MTVhYTNmMjc4N2E4MjJiNDQwZmJjZmViZTdkZDJjOGEyN2Y5OGRlNTk4NmI3MTBmMGYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Mythical (981-1000 = 2%) — gold
execute if score #roll ec.temp matches 981.. run loot insert ~ ~ ~ loot evercraft:mob_crates/mythical
execute if score #roll ec.temp matches 981.. run function evercraft:structures/container/shuffle_barrel
execute if score #roll ec.temp matches 981.. run data merge block ~ ~ ~ {CustomName:{text:"MYTHICAL Mob Crate",color:"gold",italic:false,bold:true}}
execute if score #roll ec.temp matches 981.. run function evercraft:crate_anim/spawn_display {tier:"mythical",system_tag:"mob_crate",plot_start:30,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NzEzNSwKICAicHJvZmlsZUlkIiA6ICI3OThlZWM3OGYzNGU0MGJhYjlmNjk0ODIwYzM3ZTcxYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJFbENoYW5vbk1DIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzc0ZDNmNDY0NmYxMWRlODY2MDhkZTY0NjM2NmE4YmU4YThlOWQ4MjA3ZjhhZDRjZDU2YzQzOTk2Y2JhZWMwOTUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Achievement: Surge Surfer — count crates during surge
# NOTE: mob crates don't have a single player context here (barrel-based),
# so we track via nearest player within 8 blocks
execute as @a[distance=..8] run scoreboard players add @s ach.surge_crates 1
execute as @a[distance=..8,scores={ach.surge_crates=10..}] unless entity @s[advancements={evercraft:alternate/secrets/surge_surfer=true}] run advancement grant @s only evercraft:alternate/secrets/surge_surfer
