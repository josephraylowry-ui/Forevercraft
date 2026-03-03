$data modify storage eden:settings mob_manager.$(type) merge value {allow_mob:$(allow_mob),locator_color:'$(locator_color)',locator_range:$(locator_range),type:$(type),pickup:$(pickup),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),burn:$(burn),silent:$(silent),drown:$(drown)}

$execute if data storage eden:settings mob_manager.$(type){allow_mob:"enabled"} run data modify storage eden:settings mob_manager.$(type).allow_mob_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){allow_mob:"enabled"} run data modify storage eden:settings mob_manager.$(type).allow_mob_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){burn:"enabled"} run data modify storage eden:settings mob_manager.$(type).burn_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){burn:"enabled"} run data modify storage eden:settings mob_manager.$(type).burn_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){pickup:"enabled"} run data modify storage eden:settings mob_manager.$(type).pickup_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){pickup:"enabled"} run data modify storage eden:settings mob_manager.$(type).pickup_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify storage eden:settings mob_manager.$(type).silent_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify storage eden:settings mob_manager.$(type).silent_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){drown:"enabled"} run data modify storage eden:settings mob_manager.$(type).drown_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){drown:"enabled"} run data modify storage eden:settings mob_manager.$(type).drown_initial set value "true"

$execute if data storage eden:settings mob_manager.$(type){breed:"enabled"} run data modify storage eden:settings mob_manager.$(type).breed_initial set value "false"
$execute unless data storage eden:settings mob_manager.$(type){breed:"enabled"} run data modify storage eden:settings mob_manager.$(type).breed_initial set value "true"

$data modify storage eden:settings mob_manager.$(type).mobhead_initial set value $(mobhead)
$execute store result storage eden:settings mob_manager.$(type).mobhead float 0.01 run data get storage eden:settings mob_manager.$(type).mobhead_initial

# dialog show @s evercraft:mobs/passive  # TODO: dialog registry entry not yet created

$execute unless data storage eden:settings mob_manager.$(type){type:"all_passive"} run return fail
data modify storage eden:settings mob_manager.allay merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.armadillo merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.axolotl merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.bat merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.camel merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.cat merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.chicken merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.cod merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.cow merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.donkey merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.frog merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.glow_squid merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.horse merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.mooshroom merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.mule merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.ocelot merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.parrot merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.pig merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.pufferfish merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.rabbit merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.salmon merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.sheep merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.skeleton_horse merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.sniffer merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.snow_golem merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.squid merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.strider merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.tadpole merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.tropical_fish merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.turtle merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.villager merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.wandering_trader merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.zombie_horse merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.happy_ghast merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.copper_golem merge from storage eden:settings mob_manager.all_passive
data modify storage eden:settings mob_manager.nautilus merge from storage eden:settings mob_manager.all_passive

data modify storage eden:settings mob_manager.allay.type set value "allay"
data modify storage eden:settings mob_manager.armadillo.type set value "armadillo"
data modify storage eden:settings mob_manager.axolotl.type set value "axolotl"
data modify storage eden:settings mob_manager.bat.type set value "bat"
data modify storage eden:settings mob_manager.camel.type set value "camel"
data modify storage eden:settings mob_manager.cat.type set value "cat"
data modify storage eden:settings mob_manager.chicken.type set value "chicken"
data modify storage eden:settings mob_manager.cod.type set value "cod"
data modify storage eden:settings mob_manager.cow.type set value "cow"
data modify storage eden:settings mob_manager.donkey.type set value "donkey"
data modify storage eden:settings mob_manager.frog.type set value "frog"
data modify storage eden:settings mob_manager.glow_squid.type set value "glow_squid"
data modify storage eden:settings mob_manager.horse.type set value "horse"
data modify storage eden:settings mob_manager.mooshroom.type set value "mooshroom"
data modify storage eden:settings mob_manager.mule.type set value "mule"
data modify storage eden:settings mob_manager.ocelot.type set value "ocelot"
data modify storage eden:settings mob_manager.parrot.type set value "parrot"
data modify storage eden:settings mob_manager.pig.type set value "pig"
data modify storage eden:settings mob_manager.pufferfish.type set value "pufferfish"
data modify storage eden:settings mob_manager.rabbit.type set value "rabbit"
data modify storage eden:settings mob_manager.salmon.type set value "salmon"
data modify storage eden:settings mob_manager.sheep.type set value "sheep"
data modify storage eden:settings mob_manager.skeleton_horse.type set value "skeleton_horse"
data modify storage eden:settings mob_manager.sniffer.type set value "sniffer"
data modify storage eden:settings mob_manager.snow_golem.type set value "snow_golem"
data modify storage eden:settings mob_manager.squid.type set value "squid"
data modify storage eden:settings mob_manager.strider.type set value "strider"
data modify storage eden:settings mob_manager.tadpole.type set value "tadpole"
data modify storage eden:settings mob_manager.tropical_fish.type set value "tropical_fish"
data modify storage eden:settings mob_manager.turtle.type set value "turtle"
data modify storage eden:settings mob_manager.villager.type set value "villager"
data modify storage eden:settings mob_manager.wandering_trader.type set value "wandering_trader"
data modify storage eden:settings mob_manager.happy_ghast.type set value "happy_ghast"
data modify storage eden:settings mob_manager.copper_golem.type set value "copper_golem"
data modify storage eden:settings mob_manager.nautilus.type set value "nautilus"