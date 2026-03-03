execute as @s[type=#evercraft:mobs/passive_mobs] run function evercraft:mobs/mob_settings/passive_mobs/init
execute as @s[type=#evercraft:mobs/neutral_mobs] run function evercraft:mobs/mob_settings/neutral_mobs/init
execute as @s[type=#evercraft:mobs/hostile_mobs] run function evercraft:mobs/mob_settings/hostile_mobs/init

# DR-based equipment scaling (overwrites mob manager gear for humanoid mobs)
execute as @s[type=#evercraft:mobs/hostile_mobs] at @s run function evercraft:mobs/dr_scaling/apply

tag @s add mob_manager.settings.applied