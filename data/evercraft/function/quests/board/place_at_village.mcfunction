# ============================================================
# Place Quest Board at Village
# Called from mob_manager village init or manually
# ============================================================

# Summon quest board marker (armor stand)
summon armor_stand ~ ~ ~ {Tags:["quests.board","quests.new"],Invisible:1b,Marker:1b,NoGravity:1b,CustomName:{"text":"Quest Board","color":"gold"}}

# Copy village ID from village marker to quest board
execute as @e[type=armor_stand,tag=quests.new,limit=1] run scoreboard players operation @s ec.village_id = @e[type=armor_stand,tag=mob_manager.village.name,distance=..48,limit=1,sort=nearest] ec.village_id

# Place lectern block
setblock ~ ~ ~ minecraft:lectern[facing=south,has_book=true]

# Generate initial quest book
execute as @e[type=armor_stand,tag=quests.new,limit=1] at @s run function evercraft:quests/board/generate_book

# Mark village as having a board
tag @e[type=armor_stand,tag=mob_manager.village.name,distance=..48,limit=1,sort=nearest] add quests.has_board

# Remove new tag
tag @e[type=armor_stand,tag=quests.new] remove quests.new

# Effects
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 20
