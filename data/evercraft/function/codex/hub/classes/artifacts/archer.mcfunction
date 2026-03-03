# Codex - Classes - Archer Artifact List
# Spawns artifact text_display and interaction entities for the Archer class
# 12 artifacts: 6 left column, 6 right column

# Subtitle
execute rotated ~ 0 positioned ^ ^1.84 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2"],billboard:"center",text:[{text:"Archer",color:"red",bold:true},{text:" Artifacts",color:"gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}

# Left column - Slot 0: hunting_bow
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_hunting_bow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick0"],width:0.5f,height:0.10f,response:1b}

# Left column - Slot 1: mechanical_shortbow
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_mechanical_shortbow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.54 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick1"],width:0.5f,height:0.10f,response:1b}

# Left column - Slot 2: battle_bow
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_battle_bow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.42 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick2"],width:0.5f,height:0.10f,response:1b}

# Left column - Slot 3: longbow
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_longbow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.30 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick3"],width:0.5f,height:0.10f,response:1b}

# Left column - Slot 4: frostbite_bow
execute rotated ~ 0 positioned ^ ^1.24 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_frostbite_bow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.18 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick4"],width:0.5f,height:0.10f,response:1b}

# Left column - Slot 5: stormcaller_bow
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_stormcaller_bow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.06 ^1.8 positioned ^0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick5"],width:0.5f,height:0.10f,response:1b}

# Right column - Slot 6: ancient_bow
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_ancient_bow"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.66 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick6"],width:0.5f,height:0.10f,response:1b}

# Right column - Slot 7: arm_cannon
execute rotated ~ 0 positioned ^ ^1.60 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_arm_cannon"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.54 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick7"],width:0.5f,height:0.10f,response:1b}

# Right column - Slot 8: sabrewing
execute rotated ~ 0 positioned ^ ^1.48 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_sabrewing"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.42 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick8"],width:0.5f,height:0.10f,response:1b}

# Right column - Slot 9: call_of_the_void
execute rotated ~ 0 positioned ^ ^1.36 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_call_of_the_void"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.30 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick9"],width:0.5f,height:0.10f,response:1b}

# Right column - Slot 10: hunters_promise
execute rotated ~ 0 positioned ^ ^1.24 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_hunters_promise"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.18 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick10"],width:0.5f,height:0.10f,response:1b}

# Right column - Slot 11: gaster_blaster
execute rotated ~ 0 positioned ^ ^1.12 ^1.78 positioned ^-0.45 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArt_gaster_blaster"],billboard:"center",text:{text:"? ???",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^1.06 ^1.8 positioned ^-0.45 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ClsPage2","Adv.ClsArtClick11"],width:0.5f,height:0.10f,response:1b}

# Refresh artifact display states
function evercraft:codex/hub/classes/refresh/archer
