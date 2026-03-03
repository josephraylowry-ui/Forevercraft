# Guidestone — Registration feedback with name
# Macro args: name (from temp)
$tellraw @a[tag=ec.gs_registrant] [{text:"[Guidestone] ",color:"dark_purple"},{text:"Registered: ",color:"green"},{text:"$(name)",color:"gold",bold:true},{text:" — Right-click to open the network.",color:"light_purple"}]
