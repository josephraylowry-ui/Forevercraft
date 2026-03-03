# Healer Artifacts — Tick Function (1s self-schedule)
# Decrements cooldowns, manages weapon lockout

# OPT: Skip everything when nobody has an active healer cooldown
# ec.hl_locked is set to 1 immediately on use, so this catches all active cooldowns
execute unless entity @a[scores={ec.hl_locked=1..},limit=1] unless entity @e[type=arrow,tag=healer_arrow,limit=1] unless entity @e[type=spectral_arrow,tag=healer_arrow,limit=1] run return run schedule function evercraft:artifacts/healer/tick 1s

# === COOLDOWN DECREMENTS ===
scoreboard players remove @a[scores={ec.hl_bandage=1..}] ec.hl_bandage 1
scoreboard players remove @a[scores={ec.hl_poultice=1..}] ec.hl_poultice 1
scoreboard players remove @a[scores={ec.hl_salts=1..}] ec.hl_salts 1
scoreboard players remove @a[scores={ec.hl_balm=1..}] ec.hl_balm 1
scoreboard players remove @a[scores={ec.hl_chalice=1..}] ec.hl_chalice 1
scoreboard players remove @a[scores={ec.hl_incense=1..}] ec.hl_incense 1
scoreboard players remove @a[scores={ec.hl_plume=1..}] ec.hl_plume 1
scoreboard players remove @a[scores={ec.hl_censer=1..}] ec.hl_censer 1
scoreboard players remove @a[scores={ec.hl_lotus=1..}] ec.hl_lotus 1
scoreboard players remove @a[scores={ec.hl_tome=1..}] ec.hl_tome 1
scoreboard players remove @a[scores={ec.hl_ambrosia=1..}] ec.hl_ambrosia 1
scoreboard players remove @a[scores={ec.hl_tears=1..}] ec.hl_tears 1

# === UPDATE LOCKOUT FLAG ===
# Reset locked players to 0, then set to 1 if any CD active
scoreboard players set @a[scores={ec.hl_locked=1..}] ec.hl_locked 0
execute as @a[scores={ec.hl_bandage=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_poultice=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_salts=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_balm=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_chalice=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_incense=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_plume=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_censer=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_lotus=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_tome=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_ambrosia=1..}] run scoreboard players set @s ec.hl_locked 1
execute as @a[scores={ec.hl_tears=1..}] run scoreboard players set @s ec.hl_locked 1

# === LOCKOUT EFFECTS ===
# Weakness V (amplifier 4) — blocks melee damage
execute as @a[scores={ec.hl_locked=1..}] run effect give @s weakness 2 4 false

# Zero damage on arrows fired by locked healers (tagged in lockout_tick)
execute as @e[type=arrow,tag=healer_arrow] run data modify entity @s damage set value 0.0d
execute as @e[type=spectral_arrow,tag=healer_arrow] run data modify entity @s damage set value 0.0d

# Clean up healer_arrow tags on arrows that are in-ground or old (> 3s old)
execute as @e[type=arrow,tag=healer_arrow] if data entity @s {inBlockState:{}} run tag @s remove healer_arrow
execute as @e[type=spectral_arrow,tag=healer_arrow] if data entity @s {inBlockState:{}} run tag @s remove healer_arrow

# === RESCHEDULE ===
schedule function evercraft:artifacts/healer/tick 1s
