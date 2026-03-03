# Foraging Bush: Summon bush entities at current position
# Run at the ground-level position where bush should appear

# Data marker (stores spawn gametime for despawn calculation)
summon marker ~ ~ ~ {Tags:["ec.forage","ec.forage_data","ec.forage_new"]}
execute store result entity @e[type=marker,tag=ec.forage_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime
tag @e[type=marker,tag=ec.forage_new,limit=1,distance=..1] remove ec.forage_new

# Item display (visual bush — dead_bush with billboard so it faces the player)
summon item_display ~ ~0.1 ~ {Tags:["ec.forage","ec.forage_visual"],item:{id:"minecraft:dead_bush",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[0.8f,0.8f,0.8f]},billboard:"center"}

# Interaction entity (right-click target, slightly above ground)
summon interaction ~ ~0.2 ~ {Tags:["ec.forage","ec.forage_click"],width:1.0f,height:0.8f,response:1b}

# Spawn particle burst
particle dust{color:[0.4,0.8,0.3],scale:0.8} ~ ~0.3 ~ 0.2 0.2 0.2 0 8
particle minecraft:happy_villager ~ ~0.5 ~ 0.1 0.3 0.1 0 5
