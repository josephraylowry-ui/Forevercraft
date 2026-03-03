# Dungeon Wave 3 — The Horde (7 mobs)
# Run at: dg.center marker position

# 3 Zombies with iron armor
summon zombie ~5 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
summon zombie ~-5 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
summon zombie ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}

# 2 Skeletons with chainmail
summon skeleton ~4 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:chainmail_chestplate"}}}
summon skeleton ~-4 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:chainmail_chestplate"}}}

# 1 Creeper
summon creeper ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# 1 Witch
summon witch ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# Wave announcement
title @a[tag=dg.player] times 5 30 10
title @a[tag=dg.player] title {text:"Wave 3",color:"gold",bold:true}
title @a[tag=dg.player] subtitle {text:"The Horde",color:"yellow"}
playsound minecraft:entity.ender_dragon.growl master @a[tag=dg.player] ~ ~ ~ 0.4 1.3
