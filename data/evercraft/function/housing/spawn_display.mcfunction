# ============================================================
# Hearthstone — Spawn visual overlay (player_head on item_display)
# Macro function: requires temp_skin in evercraft:housing storage
# Same pattern as guidestone/spawn_display
# Run at: the lodestone block position (block-aligned)
# ============================================================

$summon armor_stand ~0.5 ~ ~0.5 { \
  Tags:["HS.Stand","HS.Display","smithed.entity"], \
  NoGravity:true, \
  Invisible:true, \
  Small:true, \
  Invulnerable:true, \
  DisabledSlots:4144959, \
  Passengers:[{ \
    id:"minecraft:item_display", \
    Tags:["HS.Display","smithed.entity"], \
    brightness:{sky:15,block:15}, \
    view_range:1f, \
    width:0f, \
    height:0f, \
    item_display:"head", \
    transformation:{ \
      left_rotation:[0f,0f,0f,1f], \
      right_rotation:[0f,0f,0f,1f], \
      translation:[0.0f,0.05f,0.0f], \
      scale:[2.05f,2.1f,2.05f] \
    }, \
    item:{ \
      id:"minecraft:player_head", \
      count:1, \
      components:{ \
        "minecraft:profile":{ \
          properties:[{name:"textures",value:"$(temp_skin)"}] \
        } \
      } \
    } \
  }] \
}
