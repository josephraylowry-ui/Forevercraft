# Mob Crates - Spawn a chest at the mob's death location
# Called when a patron mob dies - spawns a barrel with loot based on tier
# Now includes crate animation system!

# Store current position for the chest (locked during animation)
execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"}}

# Dream Surge Event: upgrade common/uncommon/rare mob crates to Ornate+ (70/28/2%)
execute if score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:event/roll_event_mob_crate
execute if score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:event/roll_event_mob_crate
execute if score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.rare] run function evercraft:event/roll_event_mob_crate

# The Dreaming: guarantee Rare+ mob crates (upgrade common/uncommon to rare)
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run loot insert ~ ~ ~ loot evercraft:mob_crates/rare
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:bosses/totem/roll_crate_drop
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:structures/container/shuffle_barrel
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run data merge block ~ ~ ~ {CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"mob_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3MjYyOCwKICAicHJvZmlsZUlkIiA6ICIzMjFjNTBiMjJhY2Q0OGUxOGEyMGU0N2I2ZThhYjE2ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJsaWdodDEzMzM3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzMDdhZWJjNWEwOGQzMTYyMWQ3NTRkODc5ZWI1OTQ5OTFmMDQxNTI5ZjFmYmFhMjg0MGZhYTlmMjQ3MWU0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run loot insert ~ ~ ~ loot evercraft:mob_crates/rare
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:bosses/totem/roll_crate_drop
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:structures/container/shuffle_barrel
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run data merge block ~ ~ ~ {CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}
execute unless score #ec_event_active ec.var matches 1 if score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"mob_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3MjYyOCwKICAicHJvZmlsZUlkIiA6ICIzMjFjNTBiMjJhY2Q0OGUxOGEyMGU0N2I2ZThhYjE2ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJsaWdodDEzMzM3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzMDdhZWJjNWEwOGQzMTYyMWQ3NTRkODc5ZWI1OTQ5OTFmMDQxNTI5ZjFmYmFhMjg0MGZhYTlmMjQ3MWU0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}

# Determine the tier based on mob patron tag and fill with appropriate loot
# Common tier — skip during Dream Surge or The Dreaming (already upgraded above)
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run loot insert ~ ~ ~ loot evercraft:mob_crates/common
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:bosses/totem/roll_crate_drop
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:structures/container/shuffle_barrel
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run data merge block ~ ~ ~ {CustomName:{text:"Common Mob Crate",color:"white",italic:false}}
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.common] run function evercraft:crate_anim/spawn_display {tier:"common",system_tag:"mob_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NTMyNiwKICAicHJvZmlsZUlkIiA6ICI5ZjJiY2M1M2U4YzM0OTY4YTc5Yzc0NTExYWQ2NmQyYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJLYWJveWlvIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2M1M2UxYTgwYTQ4ODEyZTJlYmFiYTU0YTRiMjczM2RjMTFjNDc2ZTI0NDJlMzcwYzNjOWRjMWQ0OTc5NzE4ZDIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Uncommon tier — skip during Dream Surge or The Dreaming
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run loot insert ~ ~ ~ loot evercraft:mob_crates/uncommon
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:bosses/totem/roll_crate_drop
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:structures/container/shuffle_barrel
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run data merge block ~ ~ ~ {CustomName:{text:"Uncommon Mob Crate",color:"blue",italic:false}}
execute unless score #ec_event_active ec.var matches 1 unless score #we_dreaming_lock ec.var matches 1 if entity @s[tag=ec.patron.uncommon] run function evercraft:crate_anim/spawn_display {tier:"uncommon",system_tag:"mob_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3NDQ1OCwKICAicHJvZmlsZUlkIiA6ICIxODEzOTc2N2Q2YjU0N2E5OWY3M2M0ZjRmZjEzOTZhNCIsCiAgInByb2ZpbGVOYW1lIiA6ICJVc2FXaW1hIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzVkZGYwYTEwOGNkM2JjYWNmOTZjZmJmMzBlMTVkMzU0N2ZmN2JmZjk1ZDBmOTI0M2VjMzU0N2NhZWM2YWQzZmMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Rare tier — skip during Dream Surge
execute unless score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.rare] run loot insert ~ ~ ~ loot evercraft:mob_crates/rare
execute unless score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.rare] run function evercraft:bosses/totem/roll_crate_drop
execute unless score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.rare] run function evercraft:structures/container/shuffle_barrel
execute unless score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.rare] run data merge block ~ ~ ~ {CustomName:{text:"Rare Mob Crate",color:"aqua",italic:false}}
execute unless score #ec_event_active ec.var matches 1 if entity @s[tag=ec.patron.rare] run function evercraft:crate_anim/spawn_display {tier:"rare",system_tag:"mob_crate",plot_start:15,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY3MjYyOCwKICAicHJvZmlsZUlkIiA6ICIzMjFjNTBiMjJhY2Q0OGUxOGEyMGU0N2I2ZThhYjE2ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJsaWdodDEzMzM3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzYzMDdhZWJjNWEwOGQzMTYyMWQ3NTRkODc5ZWI1OTQ5OTFmMDQxNTI5ZjFmYmFhMjg0MGZhYTlmMjQ3MWU0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}

# Ornate tier — dream rate-gated via spawn function
execute if entity @s[tag=ec.patron.ornate] run function evercraft:mob_crates/spawn/ornate

# Exquisite tier — dream rate-gated via spawn function
execute if entity @s[tag=ec.patron.exquisite] run function evercraft:mob_crates/spawn/exquisite

# Mythical tier — dream rate-gated via spawn function
execute if entity @s[tag=ec.patron.mythical] run function evercraft:mob_crates/spawn/mythical
