# Weapon & Armor Mastery XP detection — 4-tick self-schedule
schedule function evercraft:weapon_mastery/xp_tick 4t

# Unified XP check for all players (weapons + armor)
execute as @a run function evercraft:weapon_mastery/xp_check_all
