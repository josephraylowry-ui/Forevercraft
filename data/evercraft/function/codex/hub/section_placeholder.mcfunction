# Codex Hub — Section Placeholder (Macro)
# Temporary "Coming Soon" message for sections not yet implemented
# Macro args: name, color

$execute rotated ~ 0 positioned ^ ^1.3 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{text:"$(name) — Coming Soon",color:"$(color)"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
