# Refresh status and result lines (macro)
# Called with storage evercraft:transmute temp
# Keys: tier_name, tier_color, next_name, next_color, count, required

# Update status line with deposited count and tier
$data modify entity @e[type=text_display,tag=TX.Status,distance=..7,limit=1] text set value [{text:"Deposited: ",color:"gray"},{text:"$(count)",color:"white"},{text:"/",color:"gray"},{text:"$(required)",color:"white"},{text:" ",color:"gray"},{text:"$(tier_name)",color:"$(tier_color)",bold:true},{text:" artifacts",color:"gray"}]

# Update result line showing upgrade path
$data modify entity @e[type=text_display,tag=TX.Result,distance=..7,limit=1] text set value [{text:"$(tier_name)",color:"$(tier_color)"},{text:" \u279c ",color:"gray"},{text:"$(next_name)",color:"$(next_color)",bold:true}]
