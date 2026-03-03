$data modify storage eden:settings mob_manager.$(type) merge value {allow_mob:$(allow_mob),locator_color:'$(locator_color)',locator_range:$(locator_range),type:$(type),pickup:$(pickup),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),tempt_range:$(tempt_range),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),breed:$(breed),silent:$(silent),burn:$(burn),drown:$(drown)}

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

# dialog show @s evercraft:mobs/neutral  # TODO: dialog registry entry not yet created

$execute unless data storage eden:settings mob_manager.$(type){type:"all_neutral"} run return fail
data modify storage eden:settings mob_manager.bee merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.cave_spider merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.dolphin merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.drowned merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.enderman merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.fox merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.goat merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.iron_golem merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.llama merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.panda merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.piglin merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.polar_bear merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.spider merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.trader_llama merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.wolf merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.zombified_piglin merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.zombie_nautilus merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.zombie_horse merge from storage eden:settings mob_manager.all_neutral
data modify storage eden:settings mob_manager.camel_husk merge from storage eden:settings mob_manager.all_neutral

data modify storage eden:settings mob_manager.bee.type set value "bee"
data modify storage eden:settings mob_manager.cave_spider.type set value "cave_spider"
data modify storage eden:settings mob_manager.dolphin.type set value "dolphin"
data modify storage eden:settings mob_manager.drowned.type set value "drowned"
data modify storage eden:settings mob_manager.enderman.type set value "enderman"
data modify storage eden:settings mob_manager.fox.type set value "fox"
data modify storage eden:settings mob_manager.goat.type set value "goat"
data modify storage eden:settings mob_manager.iron_golem.type set value "iron_golem"
data modify storage eden:settings mob_manager.llama.type set value "llama"
data modify storage eden:settings mob_manager.panda.type set value "panda"
data modify storage eden:settings mob_manager.piglin.type set value "piglin"
data modify storage eden:settings mob_manager.polar_bear.type set value "polar_bear"
data modify storage eden:settings mob_manager.spider.type set value "spider"
data modify storage eden:settings mob_manager.trader_llama.type set value "trader_llama"
data modify storage eden:settings mob_manager.wolf.type set value "wolf"
data modify storage eden:settings mob_manager.zombified_piglin.type set value "zombified_piglin"
data modify storage eden:settings mob_manager.zombie_nautilus.type set value "zombie_nautilus"
data modify storage eden:settings mob_manager.zombie_horse.type set value "zombie_horse"
data modify storage eden:settings mob_manager.camel_husk.type set value "camel_husk"