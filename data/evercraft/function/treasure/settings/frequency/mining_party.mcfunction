# Mining Party Mode — ~50% overall crate chance per block
# Common: 50%, Uncommon: 25%, Rare: 10%, Ornate: 5%, Exquisite: 3.35%, Mythical: 2.5%
# Run evercraft:treasure/settings/frequency/standard to restore normal rates

# Ensure disable flags are off
scoreboard players set #disable_common mt.constant 0
scoreboard players set #disable_uncommon mt.constant 0
scoreboard players set #disable_rare mt.constant 0
scoreboard players set #disable_ornate mt.constant 0
scoreboard players set #disable_epic mt.constant 0
scoreboard players set #disable_exquisite mt.constant 0
scoreboard players set #disable_mythical mt.constant 0

# Set boosted server-wide chance values
execute store result score #chance_common mt.var run scoreboard players set #var mt.const 500000
execute store result score #chance_uncommon mt.var run scoreboard players set #var mt.const 250000
execute store result score #chance_rare mt.var run scoreboard players set #var mt.const 100000
execute store result score #chance_epic mt.var run scoreboard players set #var mt.const 50000
execute store result score #chance_exquisite mt.var run scoreboard players set #var mt.const 33500
execute store result score #chance_mythical mt.var run scoreboard players set #var mt.const 25000

# Push to all online players
function evercraft:treasure/settings/frequency/update_rates

tellraw @a [{text:"✦ ",color:"gold",bold:true},{text:"MINING PARTY",color:"gold",bold:true},{text:" ✦ ",color:"gold",bold:true},{text:"Crate drop rates boosted to ~50%! Happy mining!",color:"yellow"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.2

