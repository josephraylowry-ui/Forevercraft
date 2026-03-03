# ============================================================
# Hero's Satchel Menu — Open (11 boss artifact slots)
# ============================================================

# Safety: kill any orphaned elements
execute at @s run kill @e[type=text_display,tag=ec.hsatch_el,distance=..8]
execute at @s run kill @e[type=interaction,tag=ec.hsatch_el,distance=..8]
execute at @s run kill @e[type=item_display,tag=ec.hsatch_el,distance=..8]

# Tag player
tag @s add ec.hsatch_in_menu

# Copy bag_id for macros
execute store result storage evercraft:hero_satchel temp.bid int 1 run scoreboard players get @s ec.hbag_id

# === Background panel (taller than regular satchel to fit 11 slots) ===
execute at @s rotated ~ 0 positioned ^ ^2.0 ^1.8 run summon item_display ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_bg"],\
  billboard:"center",\
  item:{id:"black_stained_glass_pane",count:1},\
  item_display:"fixed",\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.0f,3.2f,0.01f]}\
}

# === Title ===
execute at @s rotated ~ 0 positioned ^ ^3.05 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_title"],\
  billboard:"center",\
  text:[{text:"\u2620 ",color:"dark_red"},{text:"Hero's Satchel",color:"#FF4500",bold:true},{text:" \u2620",color:"dark_red"}],\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}

# === 11 Slot Displays (spaced 0.14 apart, text scale 0.27) ===
# Slot 0 — Stormforged: Thunderstrike Core
execute at @s rotated ~ 0 positioned ^ ^2.86 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s0_txt"],\
  billboard:"center",text:[{text:" 1. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^2.76 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s0"],width:0.8f,height:0.1f,response:1b\
}

# Slot 1 — Hollow King: Soul Reaver
execute at @s rotated ~ 0 positioned ^ ^2.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s1_txt"],\
  billboard:"center",text:[{text:" 2. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^2.62 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s1"],width:0.8f,height:0.1f,response:1b\
}

# Slot 2 — Earthshaker: Earthshaker Core
execute at @s rotated ~ 0 positioned ^ ^2.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s2_txt"],\
  billboard:"center",text:[{text:" 3. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^2.48 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s2"],width:0.8f,height:0.1f,response:1b\
}

# Slot 3 — Infernal Titan: Infernal Heart
execute at @s rotated ~ 0 positioned ^ ^2.44 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s3_txt"],\
  billboard:"center",text:[{text:" 4. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^2.34 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s3"],width:0.8f,height:0.1f,response:1b\
}

# Slot 4 — Ender Architect: Architect's Design
execute at @s rotated ~ 0 positioned ^ ^2.30 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s4_txt"],\
  billboard:"center",text:[{text:" 5. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^2.20 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s4"],width:0.8f,height:0.1f,response:1b\
}

# Slot 5 — Void Sovereign: Void Sovereign's Eye
execute at @s rotated ~ 0 positioned ^ ^2.16 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s5_txt"],\
  billboard:"center",text:[{text:" 6. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^2.06 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s5"],width:0.8f,height:0.1f,response:1b\
}

# Slot 6 — Soul Warden: Soulkeeper's Ember
execute at @s rotated ~ 0 positioned ^ ^2.02 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s6_txt"],\
  billboard:"center",text:[{text:" 7. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^1.92 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s6"],width:0.8f,height:0.1f,response:1b\
}

# Slot 7 — Crimson Behemoth: Behemoth's Heart
execute at @s rotated ~ 0 positioned ^ ^1.88 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s7_txt"],\
  billboard:"center",text:[{text:" 8. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^1.78 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s7"],width:0.8f,height:0.1f,response:1b\
}

# Slot 8 — Verdant Warden: Thornheart Bloom
execute at @s rotated ~ 0 positioned ^ ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s8_txt"],\
  billboard:"center",text:[{text:" 9. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^1.64 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s8"],width:0.8f,height:0.1f,response:1b\
}

# Slot 9 — Tidecaller: Abyssal Pearl
execute at @s rotated ~ 0 positioned ^ ^1.60 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s9_txt"],\
  billboard:"center",text:[{text:"10. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^1.50 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s9"],width:0.8f,height:0.1f,response:1b\
}

# Slot 10 — Nightmare: Nightmare Fragment
execute at @s rotated ~ 0 positioned ^ ^1.46 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_slot_txt","ec.hsatch_s10_txt"],\
  billboard:"center",text:[{text:"11. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}],\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}\
}
execute at @s rotated ~ 0 positioned ^ ^1.36 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_slot","ec.hsatch_s10"],width:0.8f,height:0.1f,response:1b\
}

# === Instruction hint ===
execute at @s rotated ~ 0 positioned ^ ^1.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_hint"],\
  billboard:"center",\
  text:{text:"Hold boss artifact + click slot to store",color:"gray",italic:true},\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.22f]}\
}

# === Close button ===
execute at @s rotated ~ 0 positioned ^ ^1.12 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["ec.hsatch_el","ec.hsatch_close_txt"],\
  billboard:"center",\
  text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}],\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}\
}
execute at @s rotated ~ 0 positioned ^ ^1.00 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["ec.hsatch_el","ec.hsatch_close_btn"],width:0.5f,height:0.12f,response:1b\
}

# Refresh slots with stored contents
function evercraft:hero_satchel/menu/refresh

# Start fast tick
schedule function evercraft:hero_satchel/menu_tick 2t replace

# Sound
playsound minecraft:block.chest.open master @s ~ ~ ~ 0.5 0.8
