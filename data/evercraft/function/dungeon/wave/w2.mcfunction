# Dungeon Wave 2 — The Raiders (5 mobs)
# Run at: dg.center marker position

# 2 Zombies with leather armor
summon zombie ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:leather_chestplate"},head:{id:"minecraft:leather_helmet"}}}
summon zombie ~-4 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:leather_chestplate"},head:{id:"minecraft:leather_helmet"}}}

# 2 Skeletons
summon skeleton ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
summon skeleton ~-5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# 1 Spider
summon spider ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# Wave announcement
title @a[tag=dg.player] times 5 30 10
title @a[tag=dg.player] title {text:"Wave 2",color:"gold",bold:true}
title @a[tag=dg.player] subtitle {text:"The Raiders",color:"yellow"}
playsound minecraft:entity.ender_dragon.growl master @a[tag=dg.player] ~ ~ ~ 0.4 1.4
