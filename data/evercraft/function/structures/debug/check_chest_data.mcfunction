# Check chest data at current position
scoreboard players set @s cf.temp 0

# Check for player-placed marker
execute if entity @e[type=marker,tag=cf.player_placed,distance=..1] run tellraw @s {text:"⚠ Has cf.player_placed marker (player chest, SKIP)",color:"yellow"}
execute unless entity @e[type=marker,tag=cf.player_placed,distance=..1] run tellraw @s {text:"✓ No player-placed marker",color:"green"}

# Check LootTable tag - THIS IS THE KEY CHECK
execute if data block ~ ~ ~ LootTable run tellraw @s [{text:"✓ Has LootTable: ",color:"green"},{nbt:"LootTable",block:"~ ~ ~",color:"aqua"}]
execute unless data block ~ ~ ~ LootTable run tellraw @s {text:"✗ NO LootTable tag (already opened or vanilla-filled)",color:"red"}

# Check LootTableSeed
execute if data block ~ ~ ~ LootTableSeed run tellraw @s [{text:"  LootTableSeed: ",color:"gray"},{nbt:"LootTableSeed",block:"~ ~ ~",color:"white"}]

# Check Items in chest
execute if data block ~ ~ ~ Items[0] run tellraw @s {text:"  Chest has items inside",color:"gray"}
execute unless data block ~ ~ ~ Items[0] run tellraw @s {text:"  Chest is empty",color:"gray"}

# Now check structure detection
tellraw @s {text:"--- Structure Detection ---",color:"gold"}

# Reset scores for testing
scoreboard players set @s cf.tier 0
scoreboard players set @s cf.struct_id 0

# Test each structure predicate
execute if predicate evercraft:structures/structure/ancient_city run tellraw @s {text:"  ✓ In ANCIENT_CITY",color:"dark_aqua"}
execute if predicate evercraft:structures/structure/end_city run tellraw @s {text:"  ✓ In END_CITY",color:"light_purple"}
execute if predicate evercraft:structures/structure/bastion_remnant run tellraw @s {text:"  ✓ In BASTION_REMNANT",color:"gold"}
execute if predicate evercraft:structures/structure/trial_chambers run tellraw @s {text:"  ✓ In TRIAL_CHAMBERS",color:"red"}
execute if predicate evercraft:structures/structure/stronghold run tellraw @s {text:"  ✓ In STRONGHOLD",color:"dark_green"}
execute if predicate evercraft:structures/structure/mansion run tellraw @s {text:"  ✓ In WOODLAND_MANSION",color:"dark_gray"}
execute if predicate evercraft:structures/structure/fortress run tellraw @s {text:"  ✓ In NETHER_FORTRESS",color:"dark_red"}
execute if predicate evercraft:structures/structure/monument run tellraw @s {text:"  ✓ In OCEAN_MONUMENT",color:"blue"}
execute if predicate evercraft:structures/structure/desert_pyramid run tellraw @s {text:"  ✓ In DESERT_PYRAMID",color:"yellow"}
execute if predicate evercraft:structures/structure/jungle_pyramid run tellraw @s {text:"  ✓ In JUNGLE_PYRAMID",color:"dark_green"}
execute if predicate evercraft:structures/structure/mineshaft run tellraw @s {text:"  ✓ In MINESHAFT",color:"gray"}
execute if predicate evercraft:structures/structure/shipwreck run tellraw @s {text:"  ✓ In SHIPWRECK",color:"aqua"}
execute if predicate evercraft:structures/structure/ocean_ruin run tellraw @s {text:"  ✓ In OCEAN_RUIN",color:"blue"}
execute if predicate evercraft:structures/structure/igloo run tellraw @s {text:"  ✓ In IGLOO",color:"white"}
execute if predicate evercraft:structures/structure/pillager_outpost run tellraw @s {text:"  ✓ In PILLAGER_OUTPOST",color:"dark_gray"}
execute if predicate evercraft:structures/structure/trail_ruins run tellraw @s {text:"  ✓ In TRAIL_RUINS",color:"gold"}
execute if predicate evercraft:structures/structure/village run tellraw @s {text:"  ✓ In VILLAGE",color:"green"}
execute if predicate evercraft:structures/structure/ruined_portal run tellraw @s {text:"  ✓ In RUINED_PORTAL",color:"dark_purple"}

# Check dimension for fallback
tellraw @s {text:"--- Dimension/Y-Level Fallback ---",color:"gold"}
execute if dimension minecraft:overworld run tellraw @s {text:"  Dimension: OVERWORLD",color:"green"}
execute if dimension minecraft:the_nether run tellraw @s {text:"  Dimension: NETHER",color:"red"}
execute if dimension minecraft:the_end run tellraw @s {text:"  Dimension: END",color:"light_purple"}

execute if predicate evercraft:structures/y_level/deep run tellraw @s {text:"  Y-Level: DEEP (Y < -10)",color:"dark_aqua"}
execute if predicate evercraft:structures/y_level/underground run tellraw @s {text:"  Y-Level: UNDERGROUND (-10 to 30)",color:"gray"}
execute unless predicate evercraft:structures/y_level/deep unless predicate evercraft:structures/y_level/underground run tellraw @s {text:"  Y-Level: SURFACE (Y > 30)",color:"yellow"}

tellraw @s {text:"--- Summary ---",color:"gold"}
execute if data block ~ ~ ~ LootTable run tellraw @s {text:"This chest SHOULD trigger chest_filler loot!",color:"green",bold:true}
execute unless data block ~ ~ ~ LootTable run tellraw @s {text:"This chest will NOT trigger (no LootTable)",color:"red",bold:true}
