# Codex Classes - Rogue Artifact List
# Spawns subtitle + 12 artifact text_displays and interaction entities (6 left, 6 right)
# Called as player, at player, facing the anchor

# Subtitle
execute rotated ~ 0 positioned ^ ^1.84 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2"],billboard:"center",text:[{text:"Rogue",color:"dark_aqua",bold:true},{text:" Artifacts",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}

# --- Left Column (Slots 0-5) ---

# Slot 0: common_vex_iron_sword (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_common_vex_iron_sword"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.78 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick0"],width:0.5f,height:0.10f,response:1b}

# Slot 1: uncommon_hellenic_sword (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_uncommon_hellenic_sword"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.54 ^1.78 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick1"],width:0.5f,height:0.10f,response:1b}

# Slot 2: soulreaper (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_soulreaper"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick2"],width:0.5f,height:0.10f,response:1b}

# Slot 3: coral_blade (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_coral_blade"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick3"],width:0.5f,height:0.10f,response:1b}

# Slot 4: glacial_edge (text Y=1.24, interaction Y=1.18)
execute rotated ~ 0 positioned ^ ^1.24 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_glacial_edge"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.18 ^1.78 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick4"],width:0.5f,height:0.10f,response:1b}

# Slot 5: heartstealer (text Y=1.12, interaction Y=1.06)
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_heartstealer"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick5"],width:0.5f,height:0.10f,response:1b}

# --- Right Column (Slots 6-11) ---

# Slot 6: voidbane (text Y=1.72, interaction Y=1.66)
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_voidbane"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.78 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick6"],width:0.5f,height:0.10f,response:1b}

# Slot 7: soulflame (text Y=1.60, interaction Y=1.54)
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_soulflame"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.54 ^1.78 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick7"],width:0.5f,height:0.10f,response:1b}

# Slot 8: the_beginning_and_the_end (text Y=1.48, interaction Y=1.42)
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_the_beginning_and_the_end"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.42 ^1.78 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick8"],width:0.5f,height:0.10f,response:1b}

# Slot 9: xara_sword (text Y=1.36, interaction Y=1.30)
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_xara_sword"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.30 ^1.78 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick9"],width:0.5f,height:0.10f,response:1b}

# Slot 10: ender_dragon_sword (text Y=1.24, interaction Y=1.18)
execute rotated ~ 0 positioned ^ ^1.24 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_ender_dragon_sword"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.18 ^1.78 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick10"],width:0.5f,height:0.10f,response:1b}

# Slot 11: zantetsuken (text Y=1.12, interaction Y=1.06)
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_zantetsuken"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.06 ^1.78 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick11"],width:0.5f,height:0.10f,response:1b}

# Refresh artifact display states
function evercraft:codex/hub/classes/refresh/rogue
