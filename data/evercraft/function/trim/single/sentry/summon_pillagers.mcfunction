# Summon pillagers around the target mob
tag @s add sentry_target
scoreboard players set @a[tag=sentry_summoner] trim_math1 0

# Summon 5 pillagers around the target
execute at @s run summon pillager ~1 ~ ~ {Tags:["sentry_trim"],patrol_leader:0b,patrolling:1b,can_join_raid:0b,equipment:{mainhand:{id:"minecraft:crossbow",count:1}}}
execute at @s run summon pillager ~-1 ~ ~ {Tags:["sentry_trim"],patrol_leader:0b,patrolling:1b,can_join_raid:0b,equipment:{mainhand:{id:"minecraft:crossbow",count:1}}}
execute at @s run summon pillager ~ ~ ~1 {Tags:["sentry_trim"],patrol_leader:0b,patrolling:1b,can_join_raid:0b,equipment:{mainhand:{id:"minecraft:crossbow",count:1}}}
execute at @s run summon pillager ~ ~ ~-1 {Tags:["sentry_trim"],patrol_leader:0b,patrolling:1b,can_join_raid:0b,equipment:{mainhand:{id:"minecraft:crossbow",count:1}}}
execute at @s run summon pillager ~ ~1 ~ {Tags:["sentry_trim"],patrol_leader:0b,patrolling:1b,can_join_raid:0b,equipment:{mainhand:{id:"minecraft:crossbow",count:1}}}

# Make pillagers attack the target by damaging them with the target as source
execute as @e[type=pillager,tag=sentry_trim,distance=..5] at @s run damage @s 0.1 mob_attack by @e[type=#minecraft:hostile,tag=sentry_target,limit=1]

# Apply buffs
execute as @e[type=pillager,tag=sentry_trim] run function evercraft:trim/single/sentry/pillager_buffs

# Play sound
playsound minecraft:event.raid.horn player @a ~ ~ ~ 1 1

tag @s remove sentry_target

# Kill them after 10 seconds
schedule function evercraft:trim/single/sentry/kill_patrol 10s replace