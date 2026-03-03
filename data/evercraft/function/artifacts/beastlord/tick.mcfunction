# Beastlord Spear — Per-tick handler
# Runs every game tick when any player has ec.bl_active
# Buffs vanilla tamed animals (wolves, cats, parrots) + mount speed

# === STEP 0: Delayed item restore (consume_item fires before item removal) ===
# Must run BEFORE weapon validation so Step 1 doesn't call remove and reset ec.bl_spear
execute as @a[tag=bl.restore] run function evercraft:artifacts/beastlord/restore_item
tag @a[tag=bl.restore] remove bl.restore

# === STEP 1: Validate still holding a beastlord spear ===
execute as @a[tag=ec.bl_active] unless items entity @s weapon.mainhand *[custom_data~{beastlord:true}] run function evercraft:artifacts/beastlord/remove

# === STEP 2: Shield restriction (per-tick check) ===
execute as @a[tag=ec.bl_active] if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run function evercraft:artifacts/beastlord/shield_check

# === STEP 3: Strength aura refresh (every 40 ticks / 2 seconds) ===
scoreboard players remove @a[tag=ec.bl_active] ec.bl_str_tick 1
execute as @a[tag=ec.bl_active,scores={ec.bl_str_tick=..0}] at @s run function evercraft:artifacts/beastlord/apply_strength

# === STEP 4: Warp Strike timers (count game ticks → 1 second intervals) ===
scoreboard players add @a[tag=ec.bl_active] ec.bl_warp_sub 1
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=20..}] run scoreboard players set @s ec.bl_warp_sub 0

# Decrement per-animal warp timers on 1-second boundaries
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=0}] run scoreboard players remove @s ec.bl_warp_w 1
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=0}] run scoreboard players remove @s ec.bl_warp_c 1
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=0}] run scoreboard players remove @s ec.bl_warp_p 1

# Fire warp strikes when timers hit 0
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_w=..0}] at @s run function evercraft:artifacts/beastlord/warp/wolf
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_c=..0}] at @s run function evercraft:artifacts/beastlord/warp/cat
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_p=..0}] at @s run function evercraft:artifacts/beastlord/warp/parrot

# === STEP 5: Rally Cry cooldown decrement (piggyback on warp_sub = 0 for 1s intervals) ===
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=0,ec.bl_rally_cd=1..}] run scoreboard players remove @s ec.bl_rally_cd 1

# === STEP 6: Death save cooldown decrement (1s intervals) ===
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=0,ec.bl_save_cd=1..}] run scoreboard players remove @s ec.bl_save_cd 1

# === STEP 7: Mythical passive — Longinus death save (check every tick for responsive save) ===
execute as @a[tag=ec.bl_active,scores={ec.bl_spear=8}] run function evercraft:artifacts/beastlord/passive/longinus

# === STEP 8: Mount speed — Speed III to any mount while riding ===
execute as @a[tag=ec.bl_active] run function evercraft:artifacts/beastlord/mount_speed
