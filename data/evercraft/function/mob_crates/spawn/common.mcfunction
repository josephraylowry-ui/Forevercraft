# Mob Crates - Spawn Common Crate
# Creates a barrel with common-tier loot at current position

execute align xyz run setblock ~ ~ ~ minecraft:barrel{lock:{items:"minecraft:air"},CustomName:{text:"Common Mob Crate",color:"white",italic:false}}
loot insert ~ ~ ~ loot evercraft:mob_crates/common
function evercraft:structures/container/shuffle_barrel

# Grant XP to nearest player
experience add @p 10 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 10
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Effects
playsound minecraft:block.chest.open master @a ~ ~ ~ 1 0.9
particle minecraft:poof ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10

# Spawn crate animation display (align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"common",system_tag:"mob_crate",plot_start:10,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3MDQ2NTY2NTMyNiwKICAicHJvZmlsZUlkIiA6ICI5ZjJiY2M1M2U4YzM0OTY4YTc5Yzc0NTExYWQ2NmQyYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJLYWJveWlvIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2M1M2UxYTgwYTQ4ODEyZTJlYmFiYTU0YTRiMjczM2RjMTFjNDc2ZTI0NDJlMzcwYzNjOWRjMWQ0OTc5NzE4ZDIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}

# Achievement tracking
scoreboard players add @p ach.crates_mob 1
scoreboard players add @p ach.crates_opened 1
