schedule function evercraft:mobs/spectator_waypoint_receive 10t

# OPT: Gate behind spectator existence — most of the time nobody is in spectator mode
# Tag tracks who has the modifier so we don't call remove on players who never had it
execute as @a[gamemode=spectator,tag=!ec.spec_wp] run attribute @s waypoint_receive_range modifier add evercraft:mobs/spectator -999999999 add_value
execute as @a[gamemode=spectator,tag=!ec.spec_wp] run tag @s add ec.spec_wp
execute as @a[gamemode=!spectator,tag=ec.spec_wp] run attribute @s waypoint_receive_range modifier remove evercraft:mobs/spectator
execute as @a[gamemode=!spectator,tag=ec.spec_wp] run tag @s remove ec.spec_wp