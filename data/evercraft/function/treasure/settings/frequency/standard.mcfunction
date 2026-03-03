data merge storage evercraft:treasure/settings {\
  frequency: [\
    { id: "3", display: { text: "Standard", type: "text" } },\
    { id: "4", display: { text: "High", type: "text" } },\
    { id: "5", display: { text: "Extreme", type: "text" } },\
    { id: "1", display: { text: "Minimal", type: "text" } },\
    { id: "2", display: { text: "Low", type: "text" } }\
  ]\
}

# Halved rates (S55): Common 1/1000, Uncommon 1/2000, Rare 1/5000, Ornate 1/10000, Exquisite 1/15000, Mythical 1/20000
execute store result score #chance_common mt.var run scoreboard players set #var mt.const 1000
execute store result score #chance_uncommon mt.var run scoreboard players set #var mt.const 500
execute store result score #chance_rare mt.var run scoreboard players set #var mt.const 200
execute store result score #chance_epic mt.var run scoreboard players set #var mt.const 100
execute store result score #chance_exquisite mt.var run scoreboard players set #var mt.const 67
execute store result score #chance_mythical mt.var run scoreboard players set #var mt.const 50

function evercraft:treasure/settings/frequency/update_rates