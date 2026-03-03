# Instance 2: Spider's Nest — Spider/cave spider themed
execute if score #dg_wave ec.var matches 1 run summon spider ~4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon spider ~-4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon cave_spider ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 2 run summon spider ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon spider ~-5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon cave_spider ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon cave_spider ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon cave_spider ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 3 run summon spider ~5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:24.0d}]}
execute if score #dg_wave ec.var matches 3 run summon spider ~-5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:24.0d}]}
execute if score #dg_wave ec.var matches 3 run summon spider ~5 ~1 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:24.0d}]}
execute if score #dg_wave ec.var matches 3 run summon cave_spider ~-5 ~1 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon cave_spider ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon cave_spider ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon witch ~0 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 4 run summon spider ~6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:32.0d}]}
execute if score #dg_wave ec.var matches 4 run summon spider ~-6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:32.0d}]}
execute if score #dg_wave ec.var matches 4 run summon spider ~6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:32.0d}]}
execute if score #dg_wave ec.var matches 4 run summon spider ~-6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",Attributes:[{Name:"max_health",Base:32.0d}]}
execute if score #dg_wave ec.var matches 4 run summon cave_spider ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon cave_spider ~-5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon cave_spider ~5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon cave_spider ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon cave_spider ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}

# W5: Broodmother (spider boss, 100HP, fast) + 4 cave spider swarm
execute if score #dg_wave ec.var matches 5 run summon spider ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",CustomName:{text:"Broodmother",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,Attributes:[{Name:"max_health",Base:100.0d},{Name:"attack_damage",Base:10.0d},{Name:"movement_speed",Base:0.45d}]}
execute if score #dg_wave ec.var matches 5 run summon cave_spider ~5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",CustomName:{text:"Nest Guardian",color:"red"},Attributes:[{Name:"max_health",Base:30.0d}]}
execute if score #dg_wave ec.var matches 5 run summon cave_spider ~-5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",CustomName:{text:"Nest Guardian",color:"red"},Attributes:[{Name:"max_health",Base:30.0d}]}
execute if score #dg_wave ec.var matches 5 run summon cave_spider ~5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",CustomName:{text:"Nest Guardian",color:"red"},Attributes:[{Name:"max_health",Base:30.0d}]}
execute if score #dg_wave ec.var matches 5 run summon cave_spider ~-5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty",CustomName:{text:"Nest Guardian",color:"red"},Attributes:[{Name:"max_health",Base:30.0d}]}
