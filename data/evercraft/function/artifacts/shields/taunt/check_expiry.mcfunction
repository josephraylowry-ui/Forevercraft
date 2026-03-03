# Taunt Expiry Check — runs every 1s
# Removes taunt from mobs whose expiry gametime has passed

# Get current gametime
execute store result score #tk_now ec.var run time query gametime

# For all taunted mobs: if now >= expire, remove taunt
execute as @e[tag=ec.taunted] if score #tk_now ec.var >= @s ec.tk_expire run tag @s remove ec.taunted
execute as @e[tag=!ec.taunted,scores={ec.tk_owner=1..}] run scoreboard players reset @s ec.tk_owner
execute as @e[tag=!ec.taunted,scores={ec.tk_expire=1..}] run scoreboard players reset @s ec.tk_expire
