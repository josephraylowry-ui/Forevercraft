# Mob Crates - Spawn Ornate Crate (Dream Rate >= 5 verified)
# Barrel already placed by spawn/ornate.mcfunction

# Fill barrel with ornate loot and set name
loot insert ~ ~ ~ loot evercraft:mob_crates/ornate
function evercraft:bosses/totem/roll_crate_drop
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Ornate Mob Crate",color:"dark_purple",italic:false}}

# Grant XP to nearest player
experience add @p 100 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 100
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Spawn animation display (ornate skin — align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"ornate",system_tag:"mob_crate",plot_start:20,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2ODYzNSwKICAicHJvZmlsZUlkIiA6ICJmYjZkM2E5Zjk3MWY0ZTdlYmQ0MjE2Yjk0MjE5NDA3NCIsCiAgInByb2ZpbGVOYW1lIiA6ICJHb2xkZW5BcHBsZUdIRyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hMGFlZDAxZjE4Yjc5MDhjZTBiMTFjNjViMTFjMGE1NjgwMDlmY2IyZWY2NWQ3YThjOTEzN2NkYjY3YTM0YTJkIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
