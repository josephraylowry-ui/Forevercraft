# 5t interval — villager pathing is smooth enough at 4 updates/sec (OPT Session 76)
schedule function evercraft:mobs/villager/follow/init 5t

execute as @a at @s unless entity @e[type=villager,tag=!mob_manager.settings.exclude,distance=..6] run tag @s remove mob_manager.villager.leader
execute as @a unless items entity @s weapon.* minecraft:emerald run tag @s remove mob_manager.villager.leader

execute if data storage eden:settings mob_manager.villager_settings{villager_follow:"disabled"} run return fail

execute as @a[gamemode=!spectator,tag=!mob_manager.villager.leader] at @s if items entity @s weapon.* minecraft:emerald \
    if entity @e[type=villager,tag=!mob_manager.settings.exclude,distance=..6] \
        run tag @s add mob_manager.villager.leader

execute as @e[type=villager,tag=!mob_manager.settings.exclude] at @s \
    if entity @e[type=player,distance=..6,tag=mob_manager.villager.leader] run \
        function evercraft:mobs/villager/follow/exec