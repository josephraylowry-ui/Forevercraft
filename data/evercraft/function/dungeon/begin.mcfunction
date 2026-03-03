# Dungeon Instance System — Begin
# Called after player selects difficulty from the menu
# Run as: the player, at player position
# Expects: #dg_difficulty already set by menu/select

# Read triggering player's DR for DR scaling layer
execute store result score #dg_dr ec.var run attribute @s minecraft:luck get

# Set global state
scoreboard players set #dg_active ec.var 1
scoreboard players set #dg_wave ec.var 0
scoreboard players set #dg_timer ec.var 60
scoreboard players set #dg_type ec.var 1

# Pick random instance (1-16) — determines mob composition theme
execute store result score #dg_instance ec.var run random value 1..16

# Difficulty is already set by menu/select — no auto-calculation needed

# Tag the player (and nearby party members)
tag @s add dg.player
scoreboard players set @s dg.deaths 0

# Party integration: also tag nearby party members as dungeon participants
execute if score @s ec.party_id matches 1.. run function evercraft:party/dungeon/tag_party

# Count total dungeon participants for mob scaling
execute store result score #dg_players ec.var if entity @a[tag=dg.player]

# Place center marker at player position
execute at @s run summon marker ~ ~ ~ {Tags:["dg.center","ec.entity"]}

# Store center coordinates for boundary checking
execute store result score #dg_center_x ec.var run data get entity @e[type=marker,tag=dg.center,limit=1] Pos[0]
execute store result score #dg_center_z ec.var run data get entity @e[type=marker,tag=dg.center,limit=1] Pos[2]

# Store instance name to storage for macro title
function evercraft:dungeon/instance/get_name

# Title announcement (uses instance name from storage)
function evercraft:dungeon/instance/show_title with storage evercraft:dungeon instance

# Sound effects
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.8
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.2

# Roll dungeon modifier (random twist for this run)
function evercraft:dungeon/modifiers/roll

# Chat announcement
tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@s"},{text:" has begun a Dungeon Challenge!",color:"light_purple"}]

# Leaderboard: record start time for all participants
execute store result score @a[tag=dg.player] dg.start_time run time query gametime

# Particle burst at center
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.05 100 force
execute at @s run particle minecraft:witch ~ ~1 ~ 1 1 1 0.05 50 force
