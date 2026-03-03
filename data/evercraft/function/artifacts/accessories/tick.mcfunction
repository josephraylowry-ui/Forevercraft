# Accessory Artifacts — Tick (1s self-scheduling)
# OPT: All per-accessory checks moved to player_tick, reducing ~250 @a scans to 1

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:artifacts/accessories/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# === TOGGLE DETECTION (F8) ===
function evercraft:artifacts/accessories/toggle_check

# === TOGGLE-OFF: Remove luck attribute modifiers when disabled ===
execute as @a[scores={ec.t_pebble=1}] run attribute @s luck modifier remove evercraft:pebble_of_dreams_luck
execute as @a[scores={ec.t_dring=1}] run attribute @s luck modifier remove evercraft:diamond_ring_luck
execute as @a[scores={ec.t_rwatch=1}] run attribute @s luck modifier remove evercraft:ruin_watch_luck
execute as @a[scores={ec.t_merchant=1}] run attribute @s luck modifier remove evercraft:merchants_coin_luck
execute as @a[scores={ec.t_angler=1}] run attribute @s luck modifier remove evercraft:anglers_pearl_luck
execute as @a[scores={ec.t_undying=1}] run attribute @s luck modifier remove evercraft:ring_of_undying_luck
execute as @a[scores={ec.t_sculkhrt=1}] run attribute @s luck modifier remove evercraft:sculk_heart_luck

# === PER-PLAYER PROCESSING (all accessory checks + cleanup + worn abilities) ===
# OPT: worn_tick_player merged here — eliminates separate 1s schedule + @a scan
execute as @a at @s run function evercraft:artifacts/accessories/player_tick
execute as @a at @s run function evercraft:artifacts/accessories/worn_tick_player

# === SATCHEL DREAM RATE: Re-apply satchel artifact modifiers AFTER cleanup ===
# Cleanup removes luck modifiers for artifacts not in inventory, but satchel-stored
# artifacts aren't in inventory. Apply satchel effects here so they always survive cleanup.
execute as @a if items entity @s hotbar.* *[custom_data~{satchel:true}] run function evercraft:satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{satchel:true}] if items entity @s inventory.* *[custom_data~{satchel:true}] run function evercraft:satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{satchel:true}] unless items entity @s inventory.* *[custom_data~{satchel:true}] if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{satchel:1b}}}]}}] run function evercraft:satchel/apply_effects
execute as @a if items entity @s hotbar.* *[custom_data~{hero_satchel:true}] run function evercraft:hero_satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{hero_satchel:true}] if items entity @s inventory.* *[custom_data~{hero_satchel:true}] run function evercraft:hero_satchel/apply_effects
execute as @a unless items entity @s hotbar.* *[custom_data~{hero_satchel:true}] unless items entity @s inventory.* *[custom_data~{hero_satchel:true}] if data entity @s Inventory[{components:{"minecraft:bundle_contents":[{components:{"minecraft:custom_data":{hero_satchel:1b}}}]}}] run function evercraft:hero_satchel/apply_effects

# === COOLDOWN DECREMENTS ===
scoreboard players remove @a[scores={ec.monocle_cd=1..}] ec.monocle_cd 1
scoreboard players remove @a[scores={ec.seers_cd=1..}] ec.seers_cd 1
scoreboard players remove @a[scores={ec.wecho_cd=1..}] ec.wecho_cd 1
scoreboard players remove @a[scores={ec.ceye_cd=1..}] ec.ceye_cd 1
scoreboard players remove @a[scores={ec.wtotem_cd=1..}] ec.wtotem_cd 1
