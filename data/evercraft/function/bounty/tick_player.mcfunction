# Bounty — Per-player tick
# Run as player with active bounty, at player

# Decrement timer (2 seconds per tick)
scoreboard players remove @s ec.bnt_timer 2

# Timer expired
execute if score @s ec.bnt_timer matches ..0 run function evercraft:bounty/on_expire
execute if score @s ec.bnt_timer matches ..0 run return 0

# If patron not yet spawned, check biome
execute if score @s ec.bnt_spawned matches 0 run function evercraft:bounty/check_biome

# If patron spawned and alive, update distance display
execute if score @s ec.bnt_spawned matches 1 run function evercraft:bounty/update_distance

# If patron spawned but died (check only this player's target, not all bounty targets)
execute if score @s ec.bnt_spawned matches 1 run scoreboard players operation #bnt_check ec.var = @s ec.bnt_owner
execute if score @s ec.bnt_spawned matches 1 run scoreboard players set #bnt_alive ec.var 0
execute if score @s ec.bnt_spawned matches 1 as @e[tag=ec.bounty_target] if score @s ec.bnt_owner = #bnt_check ec.var run scoreboard players set #bnt_alive ec.var 1
execute if score @s ec.bnt_spawned matches 1 if score #bnt_alive ec.var matches 0 run function evercraft:bounty/on_kill

# Pre-spawn actionbar: show biome target
execute if score @s ec.bnt_spawned matches 0 run function evercraft:bounty/display_status
