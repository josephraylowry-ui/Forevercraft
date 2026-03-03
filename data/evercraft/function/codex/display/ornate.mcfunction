# Display Ornate Artifacts (Tier 2)
# PATTERN: Found artifacts are clickable with hover text showing description.
# click_event uses suggest_command so the player can see the artifact name in chat.
# hover_event shows the artifact's short description.
# To apply this pattern to other tier files, replace the "found" tellraw lines
# with the same format: clickable name + hover text + suggest_command.

# Ancient Bow
execute if entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Ancient Bow",color:"dark_purple",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 1"},hover_event:{action:"show_text",value:{text:"Timeless ranged weapon\nClick for details",color:"gray"}}},{text:" - Timeless ranged weapon",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Acacia Ballista
execute if entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Acacia Ballista",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 2"},hover_event:{action:"show_text",value:{text:"Siege crossbow\nClick for details",color:"gray"}}},{text:" - Siege crossbow",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Dragonslayer
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Dragonslayer",color:"dark_red",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 3"},hover_event:{action:"show_text",value:{text:"Slayer of dragons\nClick for details",color:"gray"}}},{text:" - Slayer of dragons",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Inferno Blade
execute if entity @s[advancements={evercraft:artifacts/collected/inferno_blade=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Inferno Blade",color:"red",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 4"},hover_event:{action:"show_text",value:{text:"Burning sword\nClick for details",color:"gray"}}},{text:" - Burning sword",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/inferno_blade=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Glacial Edge
execute if entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Glacial Edge",color:"aqua",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 5"},hover_event:{action:"show_text",value:{text:"Frozen blade\nClick for details",color:"gray"}}},{text:" - Frozen blade",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Excalibur
execute if entity @s[advancements={evercraft:artifacts/collected/excalibur=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Excalibur",color:"yellow",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 6"},hover_event:{action:"show_text",value:{text:"Legendary blade of kings\nClick for details",color:"gray"}}},{text:" - Legendary blade of kings",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/excalibur=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Katana
execute if entity @s[advancements={evercraft:artifacts/collected/katana=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Katana",color:"red",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 7"},hover_event:{action:"show_text",value:{text:"Samurai blade\nClick for details",color:"gray"}}},{text:" - Samurai blade",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/katana=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Claymore
execute if entity @s[advancements={evercraft:artifacts/collected/claymore=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Claymore",color:"white",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 8"},hover_event:{action:"show_text",value:{text:"Great sword\nClick for details",color:"gray"}}},{text:" - Great sword",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/claymore=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Coral Blade
execute if entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Coral Blade",color:"aqua",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 9"},hover_event:{action:"show_text",value:{text:"Oceanic sword\nClick for details",color:"gray"}}},{text:" - Oceanic sword",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Blastbreaker Mace
execute if entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Blastbreaker Mace",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 10"},hover_event:{action:"show_text",value:{text:"Explosive mace\nClick for details",color:"gray"}}},{text:" - Explosive mace",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Gungnir
execute if entity @s[advancements={evercraft:artifacts/collected/gungnir=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Gungnir",color:"yellow",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 11"},hover_event:{action:"show_text",value:{text:"Odin's spear\nClick for details",color:"gray"}}},{text:" - Odin's spear",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gungnir=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Dragonslayer Shield
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Dragonslayer Shield",color:"dark_red",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 12"},hover_event:{action:"show_text",value:{text:"Dragon-proof defense\nClick for details",color:"gray"}}},{text:" - Dragon-proof defense",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Warrior's Crown
execute if entity @s[advancements={evercraft:artifacts/collected/warriors_crown=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Warrior's Crown",color:"gold",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 13"},hover_event:{action:"show_text",value:{text:"Battle helmet\nClick for details",color:"gray"}}},{text:" - Battle helmet",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/warriors_crown=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Helm of Shadows
execute if entity @s[advancements={evercraft:artifacts/collected/helm_of_shadows=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Helm of Shadows",color:"dark_purple",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 14"},hover_event:{action:"show_text",value:{text:"Shadowy helmet\nClick for details",color:"gray"}}},{text:" - Shadowy helmet",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/helm_of_shadows=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Titan's Plate
execute if entity @s[advancements={evercraft:artifacts/collected/titans_plate=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Titan's Plate",color:"white",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 15"},hover_event:{action:"show_text",value:{text:"Giant's chestplate\nClick for details",color:"gray"}}},{text:" - Giant's chestplate",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titans_plate=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Leggings of Fortitude
execute if entity @s[advancements={evercraft:artifacts/collected/leggings_of_fortitude=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Leggings of Fortitude",color:"blue",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 16"},hover_event:{action:"show_text",value:{text:"Enduring leg armor\nClick for details",color:"gray"}}},{text:" - Enduring leg armor",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/leggings_of_fortitude=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]

# Windwalker Boots
execute if entity @s[advancements={evercraft:artifacts/collected/windwalker_boots=true}] run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Windwalker Boots",color:"white",bold:true,click_event:{action:"suggest_command",command:"/trigger evercraft.codex.info set 17"},hover_event:{action:"show_text",value:{text:"Swift footwear\nClick for details",color:"gray"}}},{text:" - Swift footwear",color:"gray"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/windwalker_boots=true}] run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true},{text:" - ",color:"dark_gray"},{text:"Not yet discovered",color:"dark_gray",italic:true}]
