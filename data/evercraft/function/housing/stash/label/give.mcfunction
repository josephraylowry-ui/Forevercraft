# ============================================================
# Give player a Stash Label item
# Run as: player
# ============================================================
give @s paper[ \
  custom_data={stash_label:true}, \
  consumable={consume_seconds:0f,animation:"none",has_consume_particles:false}, \
  custom_name='"Stash Label"', \
  lore=[ \
    '""', \
    '{"text":"Sneak + Use on a barrel","color":"gray","italic":false}', \
    '{"text":"to assign a stash category.","color":"gray","italic":false}', \
    '""', \
    '{"text":"Must be in Hearthstone zone.","color":"dark_gray","italic":false}' \
  ] \
] 1
