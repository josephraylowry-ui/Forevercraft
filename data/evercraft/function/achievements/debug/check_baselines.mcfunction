# ============================================================
# DEBUG — Print baseline vs current values for stat-based achievements
# Usage: /function evercraft:achievements/debug/check_baselines
# Run this IMMEDIATELY when achievements re-trigger to capture state
# ============================================================

tellraw @s ""
tellraw @s [{text:"=== BASELINE DIAGNOSTIC ===",color:"gold",bold:true}]

# Show base_set flag
tellraw @s [{text:"ach.base_set = ",color:"gray"},{score:{name:"@s",objective:"ach.base_set"},color:"yellow"}]

# --- Swim (Deep Diver @ 5M, Aquatic Explorer @ 10M) ---
tellraw @s [{text:"--- Swim ---",color:"aqua"}]
tellraw @s [{text:"  swim_cm (raw): ",color:"gray"},{score:{name:"@s",objective:"ach.swim_cm"},color:"white"}]
tellraw @s [{text:"  base_swim:     ",color:"gray"},{score:{name:"@s",objective:"ach.base_swim"},color:"white"}]
tellraw @s [{text:"  adj_swim:      ",color:"gray"},{score:{name:"@s",objective:"ach.adj_swim"},color:"yellow"},{text:" (thresholds: 5M / 10M)",color:"dark_gray"}]

# --- Fall (Fall Survivor @ 100M) ---
tellraw @s [{text:"--- Fall ---",color:"aqua"}]
tellraw @s [{text:"  fall_cm (raw): ",color:"gray"},{score:{name:"@s",objective:"ach.fall_cm"},color:"white"}]
tellraw @s [{text:"  base_fall:     ",color:"gray"},{score:{name:"@s",objective:"ach.base_fall"},color:"white"}]
tellraw @s [{text:"  adj_fall:      ",color:"gray"},{score:{name:"@s",objective:"ach.adj_fall"},color:"yellow"},{text:" (threshold: 100M)",color:"dark_gray"}]

# --- Brew (Potion Brewer @ 100) ---
tellraw @s [{text:"--- Brew ---",color:"aqua"}]
tellraw @s [{text:"  brew_count (raw): ",color:"gray"},{score:{name:"@s",objective:"ach.brew_count"},color:"white"}]
tellraw @s [{text:"  base_brew:        ",color:"gray"},{score:{name:"@s",objective:"ach.base_brew"},color:"white"}]
tellraw @s [{text:"  adj_brew:         ",color:"gray"},{score:{name:"@s",objective:"ach.adj_brew"},color:"yellow"},{text:" (threshold: 100)",color:"dark_gray"}]

# --- Enchant (Enchanting Master @ 50) ---
tellraw @s [{text:"--- Enchant ---",color:"aqua"}]
tellraw @s [{text:"  enchant_count (raw): ",color:"gray"},{score:{name:"@s",objective:"ach.enchant_count"},color:"white"}]
tellraw @s [{text:"  base_ench:           ",color:"gray"},{score:{name:"@s",objective:"ach.base_ench"},color:"white"}]
tellraw @s [{text:"  adj_ench:            ",color:"gray"},{score:{name:"@s",objective:"ach.adj_ench"},color:"yellow"},{text:" (threshold: 50)",color:"dark_gray"}]

# --- Cooldown state ---
tellraw @s [{text:"--- System ---",color:"aqua"}]
tellraw @s [{text:"  #ach_init_cd: ",color:"gray"},{score:{name:"#ach_init_cd",objective:"ec.var"},color:"white"}]
tellraw @s [{text:"=========================",color:"gold"}]
