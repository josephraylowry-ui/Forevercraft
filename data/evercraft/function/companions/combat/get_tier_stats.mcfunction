# Pet Combat — Get Tier Stats from Pet Name
# Reads pet_name from storage, sets tier base damage and scaling
# Output: #pc_base, #pc_scaling (x100), #pc_cooldown (ticks)
# Also sets #pc_tier ec.var (1-6) for effect scaling

# Default: Common (tier 1) — base 2.0 dmg, +0.04/level, 6s cooldown
scoreboard players set #pc_base ec.var 200
scoreboard players set #pc_scaling ec.var 4
scoreboard players set #pc_cooldown ec.var 120
scoreboard players set #pc_tier ec.var 1

# Uncommon (tier 2) — base 3.0, +0.06/level, 5.5s
execute if data storage evercraft:pet_combat {pet_name:"axolotl"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"elder_guardian"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"pufferfish"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"snail"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"turtle"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"squid"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"pig"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"mooshroom"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"camel"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"blaze"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"piglin"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"zoglin"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"wooly_cow"} run function evercraft:companions/combat/tier_uncommon
execute if data storage evercraft:pet_combat {pet_name:"mossy_skeleton"} run function evercraft:companions/combat/tier_uncommon

# Rare (tier 3) — base 4.0, +0.08/level, 5s
execute if data storage evercraft:pet_combat {pet_name:"dolphin"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"ghast"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"panda"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"rabbit"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"tiger"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"bee"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"goat"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"ocelot"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"llama"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"wolf_pet"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"creeper"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"enderman"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"monkey"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"hoglin"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"mule"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"frozen_zombie"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"mossy_zombie"} run function evercraft:companions/combat/tier_rare
execute if data storage evercraft:pet_combat {pet_name:"knight"} run function evercraft:companions/combat/tier_rare

# Ornate (tier 4) — base 5.0, +0.10/level, 4.5s
execute if data storage evercraft:pet_combat {pet_name:"blue_dragon"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"penguin"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"red_dragon"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"warden"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"fox"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"polar_bear"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"strider"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"allay"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"sniffer"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"frog"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"unicorn"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"giraffe"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"koala"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"skeleton_horse"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"arctic_fox"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"vex"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"deloris"} run function evercraft:companions/combat/tier_ornate
execute if data storage evercraft:pet_combat {pet_name:"moobloom"} run function evercraft:companions/combat/tier_ornate

# Exquisite (tier 5) — base 7.0, +0.12/level, 4s
execute if data storage evercraft:pet_combat {pet_name:"owl"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"ender_dragon"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"iron_golem"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"ravager"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"evoker"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"breeze"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"creaking"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"copper_golem"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"vindicator"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"piglin_brute"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"zombified_piglin"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"iceologer"} run function evercraft:companions/combat/tier_exquisite
execute if data storage evercraft:pet_combat {pet_name:"tuff_golem"} run function evercraft:companions/combat/tier_exquisite

# Mythical (tier 6) — base 10.0, +0.15/level, 3s
execute if data storage evercraft:pet_combat {pet_name:"herobrine"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"leviathan"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"claude"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"golden_dragon"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"void_walker"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"time_weaver"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"wither"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"snow_fox_spirit"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"spirit_wolf"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"phoenix"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"reaper"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"alien"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"snowman"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"regal_tiger"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"butterfly"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"panther"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"red_panda"} run function evercraft:companions/combat/tier_mythical
execute if data storage evercraft:pet_combat {pet_name:"cow_of_eden"} run function evercraft:companions/combat/tier_mythical
