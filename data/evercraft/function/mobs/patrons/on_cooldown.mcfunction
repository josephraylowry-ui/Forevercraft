# Patron Check — On Cooldown (skip check cycle)
# Decrements cooldown, tags unprocessed mobs, reschedules
scoreboard players remove #global patron.cooldown 1
tag @e[type=#evercraft:mobs/patrons/patron_targets,tag=!ec.patron.processed] add ec.patron.processed
schedule function evercraft:mobs/patrons/check 1s
