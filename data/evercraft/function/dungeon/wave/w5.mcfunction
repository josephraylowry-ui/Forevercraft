# Dungeon Wave 5 — The Dungeon Keeper (1 boss + 3 elite guards)
# Run at: dg.center marker position

# === THE DUNGEON KEEPER (BOSS) ===
# 150 HP (75 hearts), full netherite armor, netherite sword, glowing, custom name
summon vindicator ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"The Dungeon Keeper",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,equipment:{mainhand:{id:"minecraft:netherite_axe",components:{enchantments:{sharpness:3}}},chest:{id:"minecraft:netherite_chestplate"},head:{id:"minecraft:netherite_helmet"},legs:{id:"minecraft:netherite_leggings"},feet:{id:"minecraft:netherite_boots"}},Attributes:[{Name:"max_health",Base:150.0d},{Name:"attack_damage",Base:12.0d},{Name:"knockback_resistance",Base:0.6d},{Name:"armor",Base:20.0d},{Name:"movement_speed",Base:0.38d}]}

# === ELITE GUARDS (3) ===
# 40 HP each, diamond armor, iron sword
summon zombie ~5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Elite Guard",color:"red"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:iron_sword",components:{enchantments:{sharpness:2}}},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"},legs:{id:"minecraft:diamond_leggings"},feet:{id:"minecraft:diamond_boots"}},Attributes:[{Name:"max_health",Base:40.0d},{Name:"attack_damage",Base:8.0d},{Name:"knockback_resistance",Base:0.3d}]}
summon zombie ~-5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Elite Guard",color:"red"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:iron_sword",components:{enchantments:{sharpness:2}}},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"},legs:{id:"minecraft:diamond_leggings"},feet:{id:"minecraft:diamond_boots"}},Attributes:[{Name:"max_health",Base:40.0d},{Name:"attack_damage",Base:8.0d},{Name:"knockback_resistance",Base:0.3d}]}
summon zombie ~0 ~1 ~-6 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Elite Guard",color:"red"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:iron_sword",components:{enchantments:{sharpness:2}}},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"},legs:{id:"minecraft:diamond_leggings"},feet:{id:"minecraft:diamond_boots"}},Attributes:[{Name:"max_health",Base:40.0d},{Name:"attack_damage",Base:8.0d},{Name:"knockback_resistance",Base:0.3d}]}

# Boss entrance effects
title @a[tag=dg.player] times 5 40 10
title @a[tag=dg.player] title {text:"FINAL WAVE",color:"dark_red",bold:true}
title @a[tag=dg.player] subtitle {text:"The Dungeon Keeper",color:"gold"}
playsound minecraft:entity.wither.spawn master @a[tag=dg.player] ~ ~ ~ 0.6 0.6
playsound minecraft:entity.ender_dragon.growl master @a[tag=dg.player] ~ ~ ~ 0.6 0.8
particle minecraft:flame ~ ~1 ~ 2 1 2 0.1 200 force
particle minecraft:soul_fire_flame ~ ~1 ~ 2 1 2 0.1 100 force
particle minecraft:large_smoke ~ ~1 ~ 2 1 2 0.05 50 force
