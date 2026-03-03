##Trader Team settings
team add wandering_trader "Wandering Trader"
team modify wandering_trader color blue

##default technical scoreboard
scoreboard objectives add mob_manager.technical dummy

##additional scoreboards
scoreboard objectives add mob_manager.playerhead.id dummy
scoreboard objectives add mob_manager.playerhead.update minecraft.custom:minecraft.leave_game
scoreboard objectives add mob_manager.used.bell minecraft.custom:minecraft.bell_ring
scoreboard objectives add mob_manager.follow.px dummy
scoreboard objectives add mob_manager.follow.py dummy
scoreboard objectives add mob_manager.follow.pz dummy
scoreboard objectives add mob_manager.follow.dx dummy
scoreboard objectives add mob_manager.follow.dy dummy
scoreboard objectives add mob_manager.follow.dz dummy
scoreboard objectives add mob_manager.follow.ex dummy
scoreboard objectives add mob_manager.follow.ey dummy
scoreboard objectives add mob_manager.follow.ez dummy
scoreboard objectives add mob_manager.follow.dx2 dummy
scoreboard objectives add mob_manager.follow.dy2 dummy
scoreboard objectives add mob_manager.follow.dz2 dummy
scoreboard objectives add mob_manager.follow.len2 dummy
scoreboard objectives add mob_manager.follow.motionX dummy
scoreboard objectives add mob_manager.follow.motionZ dummy

##apply default values on first load
execute unless data storage eden:settings mob_manager.misc run function evercraft:mobs/default_values

##enable loot container trades for wandering trader
function evercraft:mobs/wandering_trader/trades/loot_container/enable
data modify storage eden:database names.village set from storage eden:database village

##set data pack version
data modify storage eden:datapack nice_mob_manager.version set value "2.7"

##start the village naming schedule loop
schedule function evercraft:mobs/village/init 1s

## Bootstrap mob self-scheduling loops (won't start on fresh worlds otherwise)
schedule function evercraft:mobs/init 10t
schedule function evercraft:mobs/locator_bar/init 15s
schedule function evercraft:mobs/database/playerheads/update/init 1d
schedule function evercraft:mobs/villager/follow/init 5t
schedule function evercraft:mobs/baby_mount/scheduled 60s
schedule function evercraft:mobs/check_gamerules 300s
schedule function evercraft:mobs/jeb_sheep/change_color/run 10s
schedule function evercraft:mobs/misc_modifications 5s
schedule function evercraft:mobs/spectator_waypoint_receive 10t

## Restart companion despawn check if any companions exist after reload
execute if entity @e[type=villager,tag=ec.wt_companion,limit=1] run schedule function evercraft:mobs/wandering_trader/companion/tick 5s replace