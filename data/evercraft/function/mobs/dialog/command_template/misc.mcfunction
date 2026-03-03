$data modify storage eden:settings mob_manager.misc merge value {mobs_on_locator_bar:$(mobs_on_locator_bar),shulkercolor:$(shulkercolor),rabbitcarrot:$(rabbitcarrot),locator_assets:$(locator_assets),snifferbrain:$(snifferbrain),creeperfuse:$(creeperfuse),skeletonhorsetrap:$(skeletonhorsetrap),irongolemanger:$(irongolemanger),jebcolor:$(jebcolor),egglay:$(egglay),need_sky:$(need_sky)}

execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} run data modify storage eden:settings mob_manager.misc.mobs_on_locator_bar_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} run data modify storage eden:settings mob_manager.misc.mobs_on_locator_bar_initial set value "true"

execute if data storage eden:settings mob_manager.misc{snifferbrain:"enabled"} run data modify storage eden:settings mob_manager.misc.snifferbrain_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{snifferbrain:"enabled"} run data modify storage eden:settings mob_manager.misc.snifferbrain_initial set value "true"

execute if data storage eden:settings mob_manager.misc{creeperfuse:"enabled"} run data modify storage eden:settings mob_manager.misc.creeperfuse_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{creeperfuse:"enabled"} run data modify storage eden:settings mob_manager.misc.creeperfuse_initial set value "true"

execute if data storage eden:settings mob_manager.misc{skeletonhorsetrap:"enabled"} run data modify storage eden:settings mob_manager.misc.skeletonhorsetrap_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{skeletonhorsetrap:"enabled"} run data modify storage eden:settings mob_manager.misc.skeletonhorsetrap_initial set value "true"

execute if data storage eden:settings mob_manager.misc{irongolemanger:"enabled"} run data modify storage eden:settings mob_manager.misc.irongolemanger_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{irongolemanger:"enabled"} run data modify storage eden:settings mob_manager.misc.irongolemanger_initial set value "true"

execute if data storage eden:settings mob_manager.misc{jebcolor:"enabled"} run data modify storage eden:settings mob_manager.misc.jebcolor_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{jebcolor:"enabled"} run data modify storage eden:settings mob_manager.misc.jebcolor_initial set value "true"

execute if data storage eden:settings mob_manager.misc{egglay:"enabled"} run data modify storage eden:settings mob_manager.misc.egglay_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{egglay:"enabled"} run data modify storage eden:settings mob_manager.misc.egglay_initial set value "true"

execute if data storage eden:settings mob_manager.misc{need_sky:"enabled"} run data modify storage eden:settings mob_manager.misc.need_sky_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{need_sky:"enabled"} run data modify storage eden:settings mob_manager.misc.need_sky_initial set value "true"

execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run data modify storage eden:settings mob_manager.misc.locator_assets_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run data modify storage eden:settings mob_manager.misc.locator_assets_initial set value "true"

execute if data storage eden:settings mob_manager.misc{rabbitcarrot:"enabled"} run data modify storage eden:settings mob_manager.misc.rabbitcarrot_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{rabbitcarrot:"enabled"} run data modify storage eden:settings mob_manager.misc.rabbitcarrot_initial set value "true"

execute if data storage eden:settings mob_manager.misc{shulkercolor:"enabled"} run data modify storage eden:settings mob_manager.misc.shulkercolor_initial set value "false"
execute unless data storage eden:settings mob_manager.misc{shulkercolor:"enabled"} run data modify storage eden:settings mob_manager.misc.shulkercolor_initial set value "true"

$data modify storage eden:settings mob_manager.misc.jebspawning_initial set value $(jebspawning)
execute store result storage eden:settings mob_manager.misc.jebspawning float 0.01 run data get storage eden:settings mob_manager.misc.jebspawning_initial

$data modify storage eden:settings mob_manager.misc.killerrabbitspawning_initial set value $(killerrabbitspawning)
execute store result storage eden:settings mob_manager.misc.killerrabbitspawning float 0.01 run data get storage eden:settings mob_manager.misc.killerrabbitspawning_initial

$data modify storage eden:settings mob_manager.misc.babymountspawning_initial set value $(babymountspawning)
execute store result storage eden:settings mob_manager.misc.babymountspawning float 0.01 run data get storage eden:settings mob_manager.misc.babymountspawning_initial

$data modify storage eden:settings mob_manager.misc.illusionerspawning_initial set value $(illusionerspawning)
execute store result storage eden:settings mob_manager.misc.illusionerspawning float 0.01 run data get storage eden:settings mob_manager.misc.illusionerspawning_initial

$data modify storage eden:settings mob_manager.misc.brownmoospawning_initial set value $(brownmoospawning)
execute store result storage eden:settings mob_manager.misc.brownmoospawning float 0.01 run data get storage eden:settings mob_manager.misc.brownmoospawning_initial

$data modify storage eden:settings mob_manager.misc.immunezombie_initial set value $(immunezombie)
execute store result storage eden:settings mob_manager.misc.immunezombie float 0.01 run data get storage eden:settings mob_manager.misc.immunezombie_initial

$data modify storage eden:settings mob_manager.misc.lefthanded_initial set value $(lefthanded)
execute store result storage eden:settings mob_manager.misc.lefthanded float 0.01 run data get storage eden:settings mob_manager.misc.lefthanded_initial

# dialog show @s evercraft:mobs/main  # TODO: dialog registry entry not yet created