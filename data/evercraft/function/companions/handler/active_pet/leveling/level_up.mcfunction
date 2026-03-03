execute as @p[tag=Pets.Owner, limit=1] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.5

scoreboard players operation #previous_level Pets.EXP = #current_level Pets.EXP

function evercraft:companions/handler/math/level_up

execute if score #previous_level Pets.EXP = #current_level Pets.EXP run return fail

execute if score #current_level Pets.EXP matches 101.. run scoreboard players set #current_level Pets.EXP 100

execute as @p[tag=Pets.Owner, limit=1] at @s if score #current_level Pets.EXP matches 100 run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.2
execute if score #current_level Pets.EXP matches 100 run advancement grant @p[tag=Pets.Owner, limit=1] from evercraft:companions/divine_beast_tamer
execute if score #current_level Pets.EXP matches 100 run scoreboard players add @p[tag=Pets.Owner, limit=1] adv.stat_pets100 1

data modify storage evercraft:companions leveling.display_name set from entity @s item.components."minecraft:profile".properties[1].value
execute if data storage evercraft:companions leveling{display_name:""} run return run tellraw @p[tag=Pets.Owner, limit=1] {text:"something went wrong..."}

tellraw @p[tag=Pets.Owner, limit=1] [{text:"- Your ", color:"green"},{nbt:"leveling.display_name", storage:"evercraft:companions", color:"aqua"},{text:" has reached level "},{score:{objective:"Pets.EXP",name:"#current_level"}, color:"aqua"},{text:"."}]

execute store result storage evercraft:companions leveling.level int 1 run scoreboard players get #current_level Pets.EXP
data modify entity @s item.components."minecraft:profile".properties[2].value set string storage evercraft:companions leveling.level

function evercraft:companions/handler/active_pet/leveling/write_to_pet with storage evercraft:companions leveling
data modify entity @s item.components."minecraft:custom_name" set from entity @s CustomName

execute if data entity @s item.components."minecraft:profile".properties[{value:"Ant"}] run return run function evercraft:companions/handler/active_pet/lore/ant
execute if data entity @s item.components."minecraft:profile".properties[{value:"Axolotl"}] run return run function evercraft:companions/handler/active_pet/lore/axolotl
execute if data entity @s item.components."minecraft:profile".properties[{value:"Blue Dragon"}] run return run function evercraft:companions/handler/active_pet/lore/blue_dragon
execute if data entity @s item.components."minecraft:profile".properties[{value:"Cat"}] run return run function evercraft:companions/handler/active_pet/lore/cat
execute if data entity @s item.components."minecraft:profile".properties[{value:"Chicken"}] run return run function evercraft:companions/handler/active_pet/lore/chicken
execute if data entity @s item.components."minecraft:profile".properties[{value:"Claude"}] run return run function evercraft:companions/handler/active_pet/lore/claude
execute if data entity @s item.components."minecraft:profile".properties[{value:"Dog"}] run return run function evercraft:companions/handler/active_pet/lore/dog
execute if data entity @s item.components."minecraft:profile".properties[{value:"Dolphin"}] run return run function evercraft:companions/handler/active_pet/lore/dolphin
execute if data entity @s item.components."minecraft:profile".properties[{value:"Elder Guardian"}] run return run function evercraft:companions/handler/active_pet/lore/elder_guardian
execute if data entity @s item.components."minecraft:profile".properties[{value:"Ghast"}] run return run function evercraft:companions/handler/active_pet/lore/ghast
execute if data entity @s item.components."minecraft:profile".properties[{value:"Hamster"}] run return run function evercraft:companions/handler/active_pet/lore/hamster
execute if data entity @s item.components."minecraft:profile".properties[{value:"Butterfly"}] run return run function evercraft:companions/handler/active_pet/lore/butterfly
execute if data entity @s item.components."minecraft:profile".properties[{value:"Owl"}] run return run function evercraft:companions/handler/active_pet/lore/owl
execute if data entity @s item.components."minecraft:profile".properties[{value:"Panda"}] run return run function evercraft:companions/handler/active_pet/lore/panda
execute if data entity @s item.components."minecraft:profile".properties[{value:"Penguin"}] run return run function evercraft:companions/handler/active_pet/lore/penguin
execute if data entity @s item.components."minecraft:profile".properties[{value:"Red Dragon"}] run return run function evercraft:companions/handler/active_pet/lore/red_dragon
execute if data entity @s item.components."minecraft:profile".properties[{value:"Red Parrot"}] run return run function evercraft:companions/handler/active_pet/lore/red_parrot
execute if data entity @s item.components."minecraft:profile".properties[{value:"Phoenix"}] run return run function evercraft:companions/handler/active_pet/lore/phoenix
execute if data entity @s item.components."minecraft:profile".properties[{value:"Pufferfish"}] run return run function evercraft:companions/handler/active_pet/lore/pufferfish
execute if data entity @s item.components."minecraft:profile".properties[{value:"Rabbit"}] run return run function evercraft:companions/handler/active_pet/lore/rabbit
execute if data entity @s item.components."minecraft:profile".properties[{value:"Reaper"}] run return run function evercraft:companions/handler/active_pet/lore/reaper
execute if data entity @s item.components."minecraft:profile".properties[{value:"Snail"}] run return run function evercraft:companions/handler/active_pet/lore/snail
execute if data entity @s item.components."minecraft:profile".properties[{value:"Spinosaurus"}] run return run function evercraft:companions/handler/active_pet/lore/spinosaurus
execute if data entity @s item.components."minecraft:profile".properties[{value:"Tiger"}] run return run function evercraft:companions/handler/active_pet/lore/tiger
execute if data entity @s item.components."minecraft:profile".properties[{value:"Turtle"}] run return run function evercraft:companions/handler/active_pet/lore/turtle
execute if data entity @s item.components."minecraft:profile".properties[{value:"Warden"}] run return run function evercraft:companions/handler/active_pet/lore/warden
execute if data entity @s item.components."minecraft:profile".properties[{value:"Worm"}] run return run function evercraft:companions/handler/active_pet/lore/worm
execute if data entity @s item.components."minecraft:profile".properties[{value:"Golden Dragon"}] run return run function evercraft:companions/handler/active_pet/lore/golden_dragon
execute if data entity @s item.components."minecraft:profile".properties[{value:"Void Walker"}] run return run function evercraft:companions/handler/active_pet/lore/void_walker
execute if data entity @s item.components."minecraft:profile".properties[{value:"Time Weaver"}] run return run function evercraft:companions/handler/active_pet/lore/time_weaver
execute if data entity @s item.components."minecraft:profile".properties[{value:"Wither"}] run return run function evercraft:companions/handler/active_pet/lore/wither
execute if data entity @s item.components."minecraft:profile".properties[{value:"Snow Fox Spirit"}] run return run function evercraft:companions/handler/active_pet/lore/snow_fox_spirit
execute if data entity @s item.components."minecraft:profile".properties[{value:"Spirit Wolf"}] run return run function evercraft:companions/handler/active_pet/lore/spirit_wolf

# --- Existing pets that were missing routing ---
execute if data entity @s item.components."minecraft:profile".properties[{value:"Allay"}] run return run function evercraft:companions/handler/active_pet/lore/allay
execute if data entity @s item.components."minecraft:profile".properties[{value:"Armadillo"}] run return run function evercraft:companions/handler/active_pet/lore/armadillo
execute if data entity @s item.components."minecraft:profile".properties[{value:"Bee"}] run return run function evercraft:companions/handler/active_pet/lore/bee
execute if data entity @s item.components."minecraft:profile".properties[{value:"Breeze"}] run return run function evercraft:companions/handler/active_pet/lore/breeze
execute if data entity @s item.components."minecraft:profile".properties[{value:"Copper Golem"}] run return run function evercraft:companions/handler/active_pet/lore/copper_golem
execute if data entity @s item.components."minecraft:profile".properties[{value:"Cow"}] run return run function evercraft:companions/handler/active_pet/lore/cow
execute if data entity @s item.components."minecraft:profile".properties[{value:"Creaking"}] run return run function evercraft:companions/handler/active_pet/lore/creaking
execute if data entity @s item.components."minecraft:profile".properties[{value:"Ender Dragon"}] run return run function evercraft:companions/handler/active_pet/lore/ender_dragon
execute if data entity @s item.components."minecraft:profile".properties[{value:"Evoker"}] run return run function evercraft:companions/handler/active_pet/lore/evoker
execute if data entity @s item.components."minecraft:profile".properties[{value:"Fox"}] run return run function evercraft:companions/handler/active_pet/lore/fox
execute if data entity @s item.components."minecraft:profile".properties[{value:"Frog"}] run return run function evercraft:companions/handler/active_pet/lore/frog
execute if data entity @s item.components."minecraft:profile".properties[{value:"Goat"}] run return run function evercraft:companions/handler/active_pet/lore/goat
execute if data entity @s item.components."minecraft:profile".properties[{value:"Iron Golem"}] run return run function evercraft:companions/handler/active_pet/lore/iron_golem
execute if data entity @s item.components."minecraft:profile".properties[{value:"Leviathan"}] run return run function evercraft:companions/handler/active_pet/lore/leviathan
execute if data entity @s item.components."minecraft:profile".properties[{value:"Llama"}] run return run function evercraft:companions/handler/active_pet/lore/llama
execute if data entity @s item.components."minecraft:profile".properties[{value:"Mooshroom"}] run return run function evercraft:companions/handler/active_pet/lore/mooshroom
execute if data entity @s item.components."minecraft:profile".properties[{value:"Ocelot"}] run return run function evercraft:companions/handler/active_pet/lore/ocelot
execute if data entity @s item.components."minecraft:profile".properties[{value:"Pig"}] run return run function evercraft:companions/handler/active_pet/lore/pig
execute if data entity @s item.components."minecraft:profile".properties[{value:"Polar Bear"}] run return run function evercraft:companions/handler/active_pet/lore/polar_bear
execute if data entity @s item.components."minecraft:profile".properties[{value:"Ravager"}] run return run function evercraft:companions/handler/active_pet/lore/ravager
execute if data entity @s item.components."minecraft:profile".properties[{value:"Silverfish"}] run return run function evercraft:companions/handler/active_pet/lore/silverfish
execute if data entity @s item.components."minecraft:profile".properties[{value:"Sniffer"}] run return run function evercraft:companions/handler/active_pet/lore/sniffer
execute if data entity @s item.components."minecraft:profile".properties[{value:"Squid"}] run return run function evercraft:companions/handler/active_pet/lore/squid
execute if data entity @s item.components."minecraft:profile".properties[{value:"Strider"}] run return run function evercraft:companions/handler/active_pet/lore/strider
execute if data entity @s item.components."minecraft:profile".properties[{value:"Wolf"}] run return run function evercraft:companions/handler/active_pet/lore/wolf_pet

# --- New Pets (Session 33) ---
# Common Tier
execute if data entity @s item.components."minecraft:profile".properties[{value:"Duck"}] run return run function evercraft:companions/handler/active_pet/lore/duck
execute if data entity @s item.components."minecraft:profile".properties[{value:"Chick"}] run return run function evercraft:companions/handler/active_pet/lore/chick
execute if data entity @s item.components."minecraft:profile".properties[{value:"Mushroom"}] run return run function evercraft:companions/handler/active_pet/lore/mushroom_pet
execute if data entity @s item.components."minecraft:profile".properties[{value:"Baby Potato"}] run return run function evercraft:companions/handler/active_pet/lore/baby_potato
execute if data entity @s item.components."minecraft:profile".properties[{value:"Rascal"}] run return run function evercraft:companions/handler/active_pet/lore/rascal_pet
execute if data entity @s item.components."minecraft:profile".properties[{value:"Sporeblossom"}] run return run function evercraft:companions/handler/active_pet/lore/sporeblossom
# Uncommon Tier
execute if data entity @s item.components."minecraft:profile".properties[{value:"Camel"}] run return run function evercraft:companions/handler/active_pet/lore/camel
execute if data entity @s item.components."minecraft:profile".properties[{value:"Blaze"}] run return run function evercraft:companions/handler/active_pet/lore/blaze
execute if data entity @s item.components."minecraft:profile".properties[{value:"Piglin"}] run return run function evercraft:companions/handler/active_pet/lore/piglin
execute if data entity @s item.components."minecraft:profile".properties[{value:"Zoglin"}] run return run function evercraft:companions/handler/active_pet/lore/zoglin
execute if data entity @s item.components."minecraft:profile".properties[{value:"Wooly Cow"}] run return run function evercraft:companions/handler/active_pet/lore/wooly_cow
execute if data entity @s item.components."minecraft:profile".properties[{value:"Mossy Skeleton"}] run return run function evercraft:companions/handler/active_pet/lore/mossy_skeleton
# Rare Tier
execute if data entity @s item.components."minecraft:profile".properties[{value:"Creeper"}] run return run function evercraft:companions/handler/active_pet/lore/creeper
execute if data entity @s item.components."minecraft:profile".properties[{value:"Enderman"}] run return run function evercraft:companions/handler/active_pet/lore/enderman
execute if data entity @s item.components."minecraft:profile".properties[{value:"Monkey"}] run return run function evercraft:companions/handler/active_pet/lore/monkey
execute if data entity @s item.components."minecraft:profile".properties[{value:"Hoglin"}] run return run function evercraft:companions/handler/active_pet/lore/hoglin
execute if data entity @s item.components."minecraft:profile".properties[{value:"Mule"}] run return run function evercraft:companions/handler/active_pet/lore/mule
execute if data entity @s item.components."minecraft:profile".properties[{value:"Frozen Zombie"}] run return run function evercraft:companions/handler/active_pet/lore/frozen_zombie
execute if data entity @s item.components."minecraft:profile".properties[{value:"Mossy Zombie"}] run return run function evercraft:companions/handler/active_pet/lore/mossy_zombie
execute if data entity @s item.components."minecraft:profile".properties[{value:"Knight"}] run return run function evercraft:companions/handler/active_pet/lore/knight
# Ornate Tier
execute if data entity @s item.components."minecraft:profile".properties[{value:"Giraffe"}] run return run function evercraft:companions/handler/active_pet/lore/giraffe
execute if data entity @s item.components."minecraft:profile".properties[{value:"Koala"}] run return run function evercraft:companions/handler/active_pet/lore/koala
execute if data entity @s item.components."minecraft:profile".properties[{value:"Skeleton Horse"}] run return run function evercraft:companions/handler/active_pet/lore/skeleton_horse
execute if data entity @s item.components."minecraft:profile".properties[{value:"Arctic Fox"}] run return run function evercraft:companions/handler/active_pet/lore/arctic_fox
execute if data entity @s item.components."minecraft:profile".properties[{value:"Vex"}] run return run function evercraft:companions/handler/active_pet/lore/vex
execute if data entity @s item.components."minecraft:profile".properties[{value:"Deloris"}] run return run function evercraft:companions/handler/active_pet/lore/deloris
execute if data entity @s item.components."minecraft:profile".properties[{value:"Moobloom"}] run return run function evercraft:companions/handler/active_pet/lore/moobloom
# Exquisite Tier
execute if data entity @s item.components."minecraft:profile".properties[{value:"Vindicator"}] run return run function evercraft:companions/handler/active_pet/lore/vindicator
execute if data entity @s item.components."minecraft:profile".properties[{value:"Piglin Brute"}] run return run function evercraft:companions/handler/active_pet/lore/piglin_brute
execute if data entity @s item.components."minecraft:profile".properties[{value:"Zombified Piglin"}] run return run function evercraft:companions/handler/active_pet/lore/zombified_piglin
execute if data entity @s item.components."minecraft:profile".properties[{value:"Iceologer"}] run return run function evercraft:companions/handler/active_pet/lore/iceologer
execute if data entity @s item.components."minecraft:profile".properties[{value:"Tuff Golem"}] run return run function evercraft:companions/handler/active_pet/lore/tuff_golem
# Mythical Tier
execute if data entity @s item.components."minecraft:profile".properties[{value:"Panther"}] run return run function evercraft:companions/handler/active_pet/lore/panther
execute if data entity @s item.components."minecraft:profile".properties[{value:"Alien"}] run return run function evercraft:companions/handler/active_pet/lore/alien
execute if data entity @s item.components."minecraft:profile".properties[{value:"Snowman"}] run return run function evercraft:companions/handler/active_pet/lore/snowman
execute if data entity @s item.components."minecraft:profile".properties[{value:"Regal Tiger"}] run return run function evercraft:companions/handler/active_pet/lore/regal_tiger
execute if data entity @s item.components."minecraft:profile".properties[{value:"Red Panda"}] run return run function evercraft:companions/handler/active_pet/lore/red_panda
execute if data entity @s item.components."minecraft:profile".properties[{value:"Cow of Eden"}] run return run function evercraft:companions/handler/active_pet/lore/cow_of_eden