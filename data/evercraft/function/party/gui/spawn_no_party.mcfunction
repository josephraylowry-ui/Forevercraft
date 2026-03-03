# Party Management — No Party Layout (role = 0)
# Run as the player, at player, facing the anchor

# Status text
execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyStatus"],billboard:"center",text:{text:"You are not in a party.",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}}

# Create Party button
execute rotated ~ 0 positioned ^ ^1.44 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ Create Party ]",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.32f,0.32f,0.32f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickCreate"],width:0.7f,height:0.14f,response:1b}

# Description
execute rotated ~ 0 positioned ^ ^1.32 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"Start a new party and invite nearby players",color:"dark_gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}

# DR Leaderboard
execute rotated ~ 0 positioned ^ ^1.04 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:{text:"[ DR Leaderboard ]",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.28f]}}
execute rotated ~ 0 positioned ^ ^0.98 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage","Adv.PtyClickDRBoard"],width:0.7f,height:0.14f,response:1b}

# Hint: mention the Bonds page
execute rotated ~ 0 positioned ^ ^0.80 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.PartyPage"],billboard:"center",text:[{text:"Use ",color:"dark_gray"},{text:"[ > ]",color:"gray",bold:true},{text:" to view Party Bonds",color:"dark_gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.18f,0.18f,0.18f]}}
