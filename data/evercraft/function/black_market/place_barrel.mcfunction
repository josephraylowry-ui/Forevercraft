# ============================================================
# Black Market — Place Barrel at Village
# Run at: village marker position (armor_stand mob_manager.village.name)
# Spawns a locked barrel + invisible marker for detection
# ============================================================

# Place the barrel (Lock prevents vanilla GUI, CustomName lets found_barrel skip it)
setblock ~ ~ ~ minecraft:barrel[facing=north]{CustomName:'{"text":"Black Market","color":"dark_red","italic":true}',Lock:"ec_bm"}

# Summon invisible marker at same position for proximity/detection
summon marker ~ ~ ~ {Tags:["BM.Barrel","smithed.entity"]}

# Copy village ID from nearest village marker to our barrel marker
execute store result score #bm_vid ec.bm_temp run scoreboard players get @e[type=armor_stand,tag=mob_manager.village.name,distance=..80,limit=1,sort=nearest] ec.village_id
scoreboard players operation @e[type=marker,tag=BM.Barrel,distance=..1,limit=1,sort=nearest] ec.village_id = #bm_vid ec.bm_temp

# Visual feedback
particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 0.05 15
playsound minecraft:block.respawn_anchor.charge master @a[distance=..32] ~ ~ ~ 0.6 0.6
