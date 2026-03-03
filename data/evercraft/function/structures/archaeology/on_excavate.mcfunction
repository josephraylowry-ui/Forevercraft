# Archaeology structure crate — Phase 2: Excavation complete
# Triggered by item_durability_changed on brush (fires when excavation finishes)
# 5% chance to spawn a structure crate at the marked suspicious block position

advancement revoke @s only evercraft:treasure/archaeology/brush_crate

# 5% chance check + marker must exist → spawn structure crate at marker position
# Executes as player, positioned at the marker entity
execute if predicate evercraft:treasure/archaeology/brush_chance if entity @e[type=minecraft:marker,tag=ec.sus_marker,distance=..10] at @e[type=minecraft:marker,tag=ec.sus_marker,distance=..10,limit=1,sort=nearest] run function evercraft:structures/archaeology/spawn_crate

# Always clean up marker regardless of chance result
execute as @e[type=minecraft:marker,tag=ec.sus_marker,distance=..10] run kill @s
