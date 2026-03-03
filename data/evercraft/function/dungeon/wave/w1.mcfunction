# Dungeon Wave 1 — The Scouts (3 mobs)
# Run at: dg.center marker position

# 2 Zombies
summon zombie ~4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
summon zombie ~-4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# 1 Skeleton
summon skeleton ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# Wave announcement
title @a[tag=dg.player] times 5 30 10
title @a[tag=dg.player] title {text:"Wave 1",color:"gold",bold:true}
title @a[tag=dg.player] subtitle {text:"The Scouts",color:"yellow"}
playsound minecraft:entity.ender_dragon.growl master @a[tag=dg.player] ~ ~ ~ 0.4 1.5
