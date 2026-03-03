# Dungeon Instance System — Active Tick
# Called from main tick.mcfunction ONLY when #dg_active == 1
# Handles: timer, wave progression, death detection, boundary, HUD

# === DEATH DETECTION (instant) ===
execute if entity @a[tag=dg.player,scores={dg.deaths=1..}] run function evercraft:dungeon/fail_death
execute if score #dg_active ec.var matches 0 run return 0

# === PLAYER DISCONNECTED CHECK ===
execute unless entity @a[tag=dg.player] run function evercraft:dungeon/fail_disconnect
execute if score #dg_active ec.var matches 0 run return 0

# === COUNTDOWN PHASE (wave 0) ===
execute if score #dg_wave ec.var matches 0 run scoreboard players remove #dg_timer ec.var 1

# Countdown titles at specific moments
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 40 run title @a[tag=dg.player] times 0 25 5
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 40 run title @a[tag=dg.player] title {text:"3",color:"red",bold:true}
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 40 run playsound minecraft:block.note_block.bass master @a[tag=dg.player] ~ ~ ~ 1 0.5

execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 20 run title @a[tag=dg.player] times 0 25 5
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 20 run title @a[tag=dg.player] title {text:"2",color:"gold",bold:true}
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 20 run playsound minecraft:block.note_block.bass master @a[tag=dg.player] ~ ~ ~ 1 0.7

execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 1 run title @a[tag=dg.player] times 0 25 5
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 1 run title @a[tag=dg.player] title {text:"1",color:"green",bold:true}
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches 1 run playsound minecraft:block.note_block.bass master @a[tag=dg.player] ~ ~ ~ 1 1.0

# Countdown finished — start wave 1
# Line 1: transition wave 0→1 (gated on wave==0, fires once)
# Line 2: set combat timer (chains off wave==1 + timer still <=0)
# Line 3-4: spawn first wave (chains off wave==1 + timer==6000)
# No early return — combat phase below decrements timer so this can't re-trigger
execute if score #dg_wave ec.var matches 0 if score #dg_timer ec.var matches ..0 run scoreboard players set #dg_wave ec.var 1
execute if score #dg_wave ec.var matches 1 if score #dg_timer ec.var matches ..0 run scoreboard players set #dg_timer ec.var 6000
execute if score #dg_wave ec.var matches 1 if score #dg_timer ec.var matches 6000 if score #dg_type ec.var matches 1 at @e[type=marker,tag=dg.center,limit=1] run function evercraft:dungeon/instance/spawn_wave
execute if score #dg_wave ec.var matches 1 if score #dg_timer ec.var matches 6000 if score #dg_type ec.var matches 2 at @e[type=marker,tag=dg.center,limit=1] run function evercraft:dungeon/village/spawn_wave

# === COMBAT PHASE (waves 1-5) ===
execute unless score #dg_wave ec.var matches 1..5 run return 0

# Decrement timer
scoreboard players remove #dg_timer ec.var 1

# Timer expired — fail
execute if score #dg_timer ec.var matches ..0 run function evercraft:dungeon/fail
execute if score #dg_active ec.var matches 0 run return 0

# Boundary check (once per second — when timer is divisible by 20)
scoreboard players operation #dg_boundary_check ec.var = #dg_timer ec.var
scoreboard players operation #dg_boundary_check ec.var %= #20 ec.const
execute if score #dg_boundary_check ec.var matches 0 run function evercraft:dungeon/check_boundary

# Shrouded modifier: apply Darkness to players every 5s (timer % 100 == 0)
# OPT-7: Use #100 ec.const instead of creating temp every tick
scoreboard players operation #dg_mod_check ec.var = #dg_timer ec.var
scoreboard players operation #dg_mod_check ec.var %= #100 ec.const
execute if score #dg_modifier ec.var matches 3 if score #dg_mod_check ec.var matches 0 run effect give @a[tag=dg.player] darkness 8 0 false

# Count alive dungeon mobs
execute store result score #dg_mobs ec.var if entity @e[tag=dg.mob]

# Mobs still alive — show HUD and return
execute unless score #dg_mobs ec.var matches 0 run function evercraft:dungeon/hud
execute unless score #dg_mobs ec.var matches 0 run return 0

# === WAVE CLEARED (all mobs dead) ===

# Wave 5 cleared → DUNGEON COMPLETE! (route by type)
execute if score #dg_wave ec.var matches 5 if score #dg_type ec.var matches 1 run function evercraft:dungeon/complete
execute if score #dg_wave ec.var matches 5 if score #dg_type ec.var matches 2 run function evercraft:dungeon/village/complete
execute if score #dg_wave ec.var matches 5 run return 0

# Advance to next wave (waves 1-4 → 2-5)
scoreboard players add #dg_wave ec.var 1

# Spawn the new wave — route based on dungeon type
execute if score #dg_type ec.var matches 1 at @e[type=marker,tag=dg.center,limit=1] run function evercraft:dungeon/instance/spawn_wave
execute if score #dg_type ec.var matches 2 at @e[type=marker,tag=dg.center,limit=1] run function evercraft:dungeon/village/spawn_wave

# Show HUD after new wave spawn
function evercraft:dungeon/hud
