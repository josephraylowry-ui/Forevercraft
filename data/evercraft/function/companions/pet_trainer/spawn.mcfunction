# Spawn Pet Trainer (Zookeeper) villager
# Usage: Run at location where trainer should spawn

summon minecraft:villager ~ ~ ~ { \
  VillagerData:{profession:"minecraft:nitwit",level:99,type:"minecraft:plains"}, \
  CustomName:{text:"Zookeeper",color:"gold",bold:true}, \
  CustomNameVisible:1b, \
  Invulnerable:1b, \
  Silent:1b, \
  NoAI:1b, \
  PersistenceRequired:1b, \
  CanPickUpLoot:0b, \
  Tags:["pet_trainer","smithed.entity","smithed.strict"], \
  Offers:{recipes:[]}, \
  equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16760576}}} \
}

# Add trades to the newly spawned trainer
execute as @e[type=villager,tag=pet_trainer,distance=..1,limit=1,sort=nearest] run function evercraft:companions/pet_trainer/add_trades
