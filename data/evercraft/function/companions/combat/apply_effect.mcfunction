# Pet Combat — Apply Combat Effect Based on Pet Type
# Routes to specific effect function based on pet_name in storage
# Default: no special effect (base damage only)

# === IGNITE (fire damage) ===
execute if data storage evercraft:pet_combat {pet_name:"blaze"} run function evercraft:companions/combat/effects/ignite
execute if data storage evercraft:pet_combat {pet_name:"phoenix"} run function evercraft:companions/combat/effects/ignite
execute if data storage evercraft:pet_combat {pet_name:"red_dragon"} run function evercraft:companions/combat/effects/ignite
execute if data storage evercraft:pet_combat {pet_name:"strider"} run function evercraft:companions/combat/effects/ignite
execute if data storage evercraft:pet_combat {pet_name:"golden_dragon"} run function evercraft:companions/combat/effects/ignite

# === FROST (slowness) ===
execute if data storage evercraft:pet_combat {pet_name:"snow_fox_spirit"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"polar_bear"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"penguin"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"iceologer"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"frozen_zombie"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"arctic_fox"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"snowman"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"wooly_cow"} run function evercraft:companions/combat/effects/frost
execute if data storage evercraft:pet_combat {pet_name:"elder_guardian"} run function evercraft:companions/combat/effects/frost

# === POISON ===
execute if data storage evercraft:pet_combat {pet_name:"bee"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"pufferfish"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"mossy_skeleton"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"mossy_zombie"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"sporeblossom"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"mushroom_pet"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"snail"} run function evercraft:companions/combat/effects/poison
execute if data storage evercraft:pet_combat {pet_name:"frog"} run function evercraft:companions/combat/effects/poison

# === WITHER ===
execute if data storage evercraft:pet_combat {pet_name:"wither"} run function evercraft:companions/combat/effects/wither_effect
execute if data storage evercraft:pet_combat {pet_name:"reaper"} run function evercraft:companions/combat/effects/wither_effect
execute if data storage evercraft:pet_combat {pet_name:"herobrine"} run function evercraft:companions/combat/effects/wither_effect
execute if data storage evercraft:pet_combat {pet_name:"skeleton_horse"} run function evercraft:companions/combat/effects/wither_effect
execute if data storage evercraft:pet_combat {pet_name:"zombified_piglin"} run function evercraft:companions/combat/effects/wither_effect

# === LIGHTNING (bonus damage + flash) ===
execute if data storage evercraft:pet_combat {pet_name:"creeper"} run function evercraft:companions/combat/effects/lightning
execute if data storage evercraft:pet_combat {pet_name:"copper_golem"} run function evercraft:companions/combat/effects/lightning
execute if data storage evercraft:pet_combat {pet_name:"time_weaver"} run function evercraft:companions/combat/effects/lightning
execute if data storage evercraft:pet_combat {pet_name:"breeze"} run function evercraft:companions/combat/effects/lightning
execute if data storage evercraft:pet_combat {pet_name:"alien"} run function evercraft:companions/combat/effects/lightning
execute if data storage evercraft:pet_combat {pet_name:"ghast"} run function evercraft:companions/combat/effects/lightning
execute if data storage evercraft:pet_combat {pet_name:"evoker"} run function evercraft:companions/combat/effects/lightning

# === VOID (levitation) ===
execute if data storage evercraft:pet_combat {pet_name:"void_walker"} run function evercraft:companions/combat/effects/void_pull
execute if data storage evercraft:pet_combat {pet_name:"ender_dragon"} run function evercraft:companions/combat/effects/void_pull
execute if data storage evercraft:pet_combat {pet_name:"enderman"} run function evercraft:companions/combat/effects/void_pull
execute if data storage evercraft:pet_combat {pet_name:"creaking"} run function evercraft:companions/combat/effects/void_pull
execute if data storage evercraft:pet_combat {pet_name:"blue_dragon"} run function evercraft:companions/combat/effects/void_pull

# === STUN (slowness III + weakness) ===
execute if data storage evercraft:pet_combat {pet_name:"iron_golem"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"ravager"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"goat"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"turtle"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"tuff_golem"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"warden"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"hoglin"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"leviathan"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"panda"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"llama"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"giraffe"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"mule"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"knight"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"deloris"} run function evercraft:companions/combat/effects/stun
execute if data storage evercraft:pet_combat {pet_name:"spinosaurus"} run function evercraft:companions/combat/effects/stun

# === BLEED (instant damage tick) ===
execute if data storage evercraft:pet_combat {pet_name:"tiger"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"regal_tiger"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"wolf_pet"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"panther"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"vindicator"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"piglin_brute"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"dog"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"piglin"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"zoglin"} run function evercraft:companions/combat/effects/bleed
execute if data storage evercraft:pet_combat {pet_name:"camel"} run function evercraft:companions/combat/effects/bleed

# === CHARM (heal player) ===
execute if data storage evercraft:pet_combat {pet_name:"allay"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"unicorn"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"moobloom"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"claude"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"cow_of_eden"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"owl"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"sniffer"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"butterfly"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"red_panda"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"cow"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"mooshroom"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"pig"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"baby_potato"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"squid"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"axolotl"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"red_parrot"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"dolphin"} run function evercraft:companions/combat/effects/charm
execute if data storage evercraft:pet_combat {pet_name:"koala"} run function evercraft:companions/combat/effects/charm

# === RUSH (double hit) ===
execute if data storage evercraft:pet_combat {pet_name:"cat"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"ocelot"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"fox"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"rabbit"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"spirit_wolf"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"vex"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"monkey"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"chick"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"rascal_pet"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"hamster"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"worm"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"silverfish"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"ant"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"chicken"} run function evercraft:companions/combat/effects/rush
execute if data storage evercraft:pet_combat {pet_name:"duck"} run function evercraft:companions/combat/effects/rush
