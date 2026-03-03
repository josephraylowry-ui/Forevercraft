 data merge storage evercraft:treasure/settings {\
  frequency: [\
    { id: "5", display: { text: "Extreme", type: "text" } },\
    { id: "1", display: { text: "Minimal", type: "text" } },\
    { id: "2", display: { text: "Low", type: "text" } },\
    { id: "3", display: { text: "Standard", type: "text" } },\
    { id: "4", display: { text: "High", type: "text" } }\
  ]\
}

# Extreme frequency mode (4x standard)
# Common: 1/125 (0.8%), Uncommon: 1/250 (0.4%), Rare: 1/625 (0.16%), Ornate: 1/1250 (0.08%), Exquisite: 1/1875 (0.053%), Mythical: 1/2500 (0.04%)
execute store result score #chance_common mt.var run scoreboard players set #var mt.const 8000
execute store result score #chance_uncommon mt.var run scoreboard players set #var mt.const 4000
execute store result score #chance_rare mt.var run scoreboard players set #var mt.const 1600
execute store result score #chance_epic mt.var run scoreboard players set #var mt.const 800
execute store result score #chance_exquisite mt.var run scoreboard players set #var mt.const 532
execute store result score #chance_mythical mt.var run scoreboard players set #var mt.const 400

function evercraft:treasure/settings/frequency/update_rates