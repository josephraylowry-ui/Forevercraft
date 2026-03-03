$data modify storage eden:settings mob_manager.$(type) merge value {allow_mob:$(allow_mob),locator_color:'$(locator_color)',locator_range:$(locator_range),pickup:$(pickup),attck_dmg:$(attck_dmg),scale_min:$(scale_min),scale_max:$(scale_max),health:$(health),follow_range:$(follow_range),safe_fall:$(safe_fall),move_speed:$(move_speed),burn:$(burn),silent:$(silent),drown:$(drown)}

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

$data modify storage eden:settings mob_manager.$(type).mobhead_initial set value $(mobhead)
$execute store result storage eden:settings mob_manager.$(type).mobhead float 0.01 run data get storage eden:settings mob_manager.$(type).mobhead_initial

# dialog show @s evercraft:mobs/hostile  # TODO: dialog registry entry not yet created

$execute unless data storage eden:settings mob_manager.$(type){type:"all_hostile"} run return fail
data modify storage eden:settings mob_manager.blaze merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.bogged merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.breeze merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.creeper merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.creaking merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.elder_guardian merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.endermite merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.evoker merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.ghast merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.guardian merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.hoglin merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.magma_cube merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.phantom merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.piglin_brute merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.pillager merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.ravager merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.shulker merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.silverfish merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.skeleton merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.slime merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.stray merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.vex merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.vindicator merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.warden merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.witch merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.wither_skeleton merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.zoglin merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.zombie merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.zombie_villager merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.husk merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.illusioner merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.wither merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.ender_dragon merge from storage eden:settings mob_manager.all_hostile
data modify storage eden:settings mob_manager.parched merge from storage eden:settings mob_manager.all_hostile

data modify storage eden:settings mob_manager.blaze.type set value "blaze"
data modify storage eden:settings mob_manager.bogged.type set value "bogged"
data modify storage eden:settings mob_manager.breeze.type set value "breeze"
data modify storage eden:settings mob_manager.creeper.type set value "creeper"
data modify storage eden:settings mob_manager.creaking.type set value "creaking"
data modify storage eden:settings mob_manager.elder_guardian.type set value "elder_guardian"
data modify storage eden:settings mob_manager.endermite.type set value "endermite"
data modify storage eden:settings mob_manager.evoker.type set value "evoker"
data modify storage eden:settings mob_manager.ghast.type set value "ghast"
data modify storage eden:settings mob_manager.guardian.type set value "guardian"
data modify storage eden:settings mob_manager.hoglin.type set value "hoglin"
data modify storage eden:settings mob_manager.magma_cube.type set value "magma_cube"
data modify storage eden:settings mob_manager.phantom.type set value "phantom"
data modify storage eden:settings mob_manager.piglin_brute.type set value "piglin_brute"
data modify storage eden:settings mob_manager.pillager.type set value "pillager"
data modify storage eden:settings mob_manager.ravager.type set value "ravager"
data modify storage eden:settings mob_manager.shulker.type set value "shulker"
data modify storage eden:settings mob_manager.silverfish.type set value "silverfish"
data modify storage eden:settings mob_manager.skeleton.type set value "skeleton"
data modify storage eden:settings mob_manager.slime.type set value "slime"
data modify storage eden:settings mob_manager.stray.type set value "stray"
data modify storage eden:settings mob_manager.vex.type set value "vex"
data modify storage eden:settings mob_manager.vindicator.type set value "vindicator"
data modify storage eden:settings mob_manager.warden.type set value "warden"
data modify storage eden:settings mob_manager.witch.type set value "witch"
data modify storage eden:settings mob_manager.wither_skeleton.type set value "wither_skeleton"
data modify storage eden:settings mob_manager.zoglin.type set value "zoglin"
data modify storage eden:settings mob_manager.zombie.type set value "zombie"
data modify storage eden:settings mob_manager.zombie_villager.type set value "zombie_villager"
data modify storage eden:settings mob_manager.husk.type set value "husk"
data modify storage eden:settings mob_manager.illusioner.type set value "illusioner"
data modify storage eden:settings mob_manager.wither.type set value "wither"
data modify storage eden:settings mob_manager.ender_dragon.type set value "ender_dragon"
data modify storage eden:settings mob_manager.parched.type set value "parched"