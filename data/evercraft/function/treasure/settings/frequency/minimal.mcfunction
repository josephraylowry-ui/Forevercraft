data merge storage evercraft:treasure/settings {\
  frequency: [\
    { id: "1", display: { text: "Minimal", type: "text" } },\
    { id: "2", display: { text: "Low", type: "text" } },\
    { id: "3", display: { text: "Standard", type: "text" } },\
    { id: "4", display: { text: "High", type: "text" } },\
    { id: "5", display: { text: "Extreme", type: "text" } }\
  ]\
}

# Minimal frequency mode (0.25x standard)
# Common: 1/2000 (0.05%), Uncommon: 1/4000 (0.025%), Rare: 1/10000 (0.01%), Ornate: 1/20000 (0.005%), Exquisite: 1/30000 (0.0033%), Mythical: 1/40000 (0.0025%)
execute store result score #chance_common mt.var run scoreboard players set #var mt.const 500
execute store result score #chance_uncommon mt.var run scoreboard players set #var mt.const 250
execute store result score #chance_rare mt.var run scoreboard players set #var mt.const 100
execute store result score #chance_epic mt.var run scoreboard players set #var mt.const 50
execute store result score #chance_exquisite mt.var run scoreboard players set #var mt.const 33
execute store result score #chance_mythical mt.var run scoreboard players set #var mt.const 25

function evercraft:treasure/settings/frequency/update_rates