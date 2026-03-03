# Deflect projectile away from player
# Reverses the projectile's direction and tags it to prevent re-deflection

# Tag this projectile as deflected so it won't be deflected again
tag @s add gc_deflected

# Set upward motion first
data modify entity @s Motion[0] set value 0.0d
data modify entity @s Motion[1] set value 0.5d
data modify entity @s Motion[2] set value 0.0d

# Apply random deflection to send it away
execute store result entity @s Motion[0] double 0.1 run random value -5..5
execute store result entity @s Motion[2] double 0.1 run random value -5..5

# For arrows, clear the owner so they can damage mobs
data remove entity @s owner

# Visual feedback
particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0.5 10
playsound minecraft:entity.enderman.teleport hostile @a[distance=..10] ~ ~ ~ 0.3 1.5

# Remove the tag after 3 seconds (allows re-deflection of new projectiles, cleans up the tag)
schedule function evercraft:artifacts/graviton_core/clear_deflect_tag 60t append
