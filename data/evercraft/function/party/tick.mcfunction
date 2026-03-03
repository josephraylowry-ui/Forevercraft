# Party System — 1s Tick Schedule
# Handles: proximity detection, buff application, combo checks, cooldowns, leader timeout

schedule function evercraft:party/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# === PROXIMITY CHECK ===
# For each player in a party, count nearby party members
execute as @a[scores={ec.party_id=1..}] at @s run function evercraft:party/proximity/check

# === APPLY/REMOVE BUFFS ===
# Players with nearby party members get passive buffs
execute as @a[scores={ec.party_id=1..,ec.party_nearby=1..}] at @s run function evercraft:party/proximity/apply_buffs
# Players in party but alone — clean up buffs
execute as @a[scores={ec.party_id=1..,ec.party_nearby=0}] run function evercraft:party/proximity/remove_buffs

# === COMBO ABILITY CHECKS ===
# Only check combos for players in a party with nearby members
execute as @a[scores={ec.party_id=1..,ec.party_nearby=1..}] at @s run function evercraft:party/combos/check_all

# === COOLDOWN DECREMENTS (20 ticks per second) ===
# OPT: Single @a scan for all cooldowns (was 10 separate @a scans)
execute as @a run function evercraft:party/tick_cooldowns

# === PING MARKER CLEANUP ===
# Emit beacon particles from active ping markers, kill expired ones
execute store result score #now ec.temp run time query gametime
execute as @e[type=marker,tag=ec.party_ping] at @s if score #now ec.temp >= @s ec.temp run kill @s
execute as @e[type=marker,tag=ec.party_ping] at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 1 0.3 0.02 5 force

# === INVITE TIMEOUT ===
# Cancel expired invites (cooldown decrement moved to tick_cooldowns)
execute as @a[scores={ec.party_inv=1,ec.party_inv_cd=..0}] run function evercraft:party/invite/timeout

# === LEADER DISCONNECT DETECTION ===
execute as @a[scores={ec.party_role=1}] run scoreboard players set @s ec.party_ldr_dc 0
function evercraft:party/check_leader

# === OFFLINE MEMBER DETECTION (10 min timeout) ===
function evercraft:party/check_offline

# === PARTY TRIGGER HANDLER ===
# 1 = open menu, 2 = create party, 3 = invite nearby, 4 = disband
# 5 = ping, 6 = leave, 10+ = accept invite from party ID
execute as @a[scores={ec.party=1}] at @s run function evercraft:party/menu/open
execute as @a[scores={ec.party=2}] at @s run function evercraft:party/menu/create
execute as @a[scores={ec.party=3}] at @s run function evercraft:party/invite/scan
execute as @a[scores={ec.party=4}] run function evercraft:party/menu/disband
execute as @a[scores={ec.party=5}] at @s run function evercraft:party/ping
execute as @a[scores={ec.party=6}] run function evercraft:party/menu/leave
# Accept invite: trigger value 10+ = accepting invite from party ID (value - 10)
execute as @a[scores={ec.party=10..}] run function evercraft:party/invite/accept
# Reset trigger
scoreboard players set @a[scores={ec.party=1..}] ec.party 0
# Also handle decline (negative values)
execute as @a[scores={ec.party=..-1}] run function evercraft:party/invite/decline
scoreboard players set @a[scores={ec.party=..-1}] ec.party 0
scoreboard players enable @a ec.party

# === SIDEBAR UPDATE ===
# OPT: Gate entire sidebar block — skip reset * when no parties exist
execute if entity @a[scores={ec.party_id=1..}] run scoreboard players reset * ec.party_hp
execute as @a[scores={ec.party_id=1..}] at @s run function evercraft:party/sidebar/update
execute if entity @a[scores={ec.party_id=1..}] run scoreboard objectives setdisplay sidebar ec.party_hp
execute unless entity @a[scores={ec.party_id=1..}] run function evercraft:party/sidebar/hide_sidebar
