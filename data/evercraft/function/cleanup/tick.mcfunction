# Batch Entity Cleanup — Safety Net (every 5 seconds)
# Catches leaked entities from: player disconnects, interrupted animations, failed write-backs
# This does NOT replace inline cleanup — it's a safety net for edge cases

# Reschedule first
schedule function evercraft:cleanup/tick 100t

# Gate: skip if no players online (no one to cause leaks)
execute unless entity @a run return 0

# === LEAKED GUI ENTITIES (player disconnected with menu open) ===

# OPT: Combined GUI cleanup — tag-only selectors (no type filter needed)
# Pet menu entities — no player within 10 blocks = orphaned
execute as @e[tag=Pets.MenuElement] unless entity @a[distance=..10] run kill @s
execute as @e[type=marker,tag=Pets.MenuAnchor] unless entity @a[distance=..10] run kill @s

# Advantage GUI entities — no player within 10 blocks = orphaned
execute as @e[tag=Adv.GUI] unless entity @a[distance=..10] run kill @s

# Guidestone menu entities — no player within 10 blocks = orphaned
execute as @e[tag=ec.gs_menu_el] unless entity @a[distance=..10] run kill @s

# Runeforge GUI entities — no player within 10 blocks = orphaned
execute as @e[tag=RF.MenuEl] unless entity @a[distance=..10] run kill @s

# === LEAKED CRATE ANIMATION ENTITIES ===
# Crate animations that didn't finish (interrupted/crashed) — no player within 16 blocks
# EXCLUDE ec.crate_done — those are persistent displays that stay until barrel is broken
execute as @e[type=armor_stand,tag=ec.crate_anim,tag=!ec.crate_done] unless entity @a[distance=..16] on passengers run kill @s
execute as @e[type=armor_stand,tag=ec.crate_anim,tag=!ec.crate_done] unless entity @a[distance=..16] run kill @s

# Mining treasure display containers — no player within 16 blocks
execute as @e[type=armor_stand,tag=mt.treasure_container] unless entity @a[distance=..16] on passengers run kill @s
execute as @e[type=armor_stand,tag=mt.treasure_container] unless entity @a[distance=..16] run kill @s

# === ORPHANED HOPPER MINECARTS (write-back failed silently) ===
# These spawn at Y=320 and should be killed within the same tick
# If they still exist after 5 seconds, something went wrong
kill @e[type=hopper_minecart,tag=wm_temp]
kill @e[type=hopper_minecart,tag=am_temp]
kill @e[type=hopper_minecart,tag=pat_temp]
kill @e[type=hopper_minecart,tag=ec.pty_cart]

# === ORPHANED SPAWN MARKERS (interrupted spawn functions) ===
# These are created and killed within the same function call
# If they still exist after 5 seconds, the function errored mid-execution
kill @e[type=marker,tag=bnt_spawn_check]
kill @e[type=marker,tag=nt_spawn_marker]
