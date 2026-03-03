# Artificer Trade Setup
# BUYS: All artifacts (items with is_artifact:true custom_data)
# SELLS: Crates for Artifact Shards

# Clear existing trades
data modify entity @s Offers.Recipes set value []

# ===== ARTIFACT BUY TRADES (villager buys artifacts, gives Artifact Shards) =====
# Trade 1: Buy artifact maces
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:mace",count:1,components:{"minecraft:custom_name":{text:"Artifact Mace",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 2: Buy artifact swords
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_name":{text:"Artifact Sword",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 3: Buy artifact axes
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_axe",count:1,components:{"minecraft:custom_name":{text:"Artifact Axe",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 4: Buy artifact bows
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":{text:"Artifact Bow",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 5: Buy artifact crossbows
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_name":{text:"Artifact Crossbow",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 6: Buy artifact tridents
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:trident",count:1,components:{"minecraft:custom_name":{text:"Artifact Trident",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 7: Buy artifact shields
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:shield",count:1,components:{"minecraft:custom_name":{text:"Artifact Shield",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 8: Buy artifact helmets
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:custom_name":{text:"Artifact Helmet",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 9: Buy artifact chestplates
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:custom_name":{text:"Artifact Chestplate",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 10: Buy artifact leggings
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:custom_name":{text:"Artifact Leggings",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 11: Buy artifact boots
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:custom_name":{text:"Artifact Boots",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# Trade 12: Buy artifact hoes/scythes
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_hoe",count:1,components:{"minecraft:custom_name":{text:"Artifact Scythe",color:"gold",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{is_artifact:true}}},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:custom_name":{text:"Artifact Shard",color:"light_purple",italic:true},"minecraft:enchantment_glint_override":true,"minecraft:custom_data":{artifact_shard:true}}}}

# ===== BLOCK TRADES (buy blocks for Artifact Shards) =====
# Trade: 48 Iron Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:iron_block",count:48},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:item_name":"Artifact Shard","minecraft:custom_data":{artifact_shard:true}}}}

# Trade: 64 Emerald Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:emerald_block",count:64},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:item_name":"Artifact Shard","minecraft:custom_data":{artifact_shard:true}}}}

# Trade: 48 Diamond Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:diamond_block",count:48},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:item_name":"Artifact Shard","minecraft:custom_data":{artifact_shard:true}}}}

# Trade: 48 Gold Blocks for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:gold_block",count:48},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:item_name":"Artifact Shard","minecraft:custom_data":{artifact_shard:true}}}}

# Trade: 1 Netherite Block for 1 Artifact Shard
data modify entity @s Offers.Recipes append value {max_uses:999,xp:2,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:1},sell:{id:"minecraft:amethyst_shard",count:1,components:{"minecraft:item_name":"Artifact Shard","minecraft:custom_data":{artifact_shard:true}}}}

# ===== ARTIFACT CRATE SELL TRADES (villager sells artifact crates for Artifact Shards) =====
# Trade 13: Rare Artifact Crate for 8 Artifact Shards
data modify entity @s Offers.Recipes append value {max_uses:64,xp:5,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:8,components:{"minecraft:custom_data":{artifact_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/artifact_rare"},"minecraft:custom_name":{text:"Rare Artifact Crate",bold:true,italic:true,color:"aqua"},"minecraft:lore":[{text:"Place to reveal your artifact!",color:"gray",italic:true}],"minecraft:custom_data":{artc_rarity:"rare"}}}}

# Trade 14: Ornate Artifact Crate for 16 Artifact Shards
data modify entity @s Offers.Recipes append value {max_uses:32,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:16,components:{"minecraft:custom_data":{artifact_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/artifact_ornate"},"minecraft:custom_name":{text:"Ornate Artifact Crate",bold:true,italic:true,color:"dark_purple"},"minecraft:lore":[{text:"Place to reveal your artifact!",color:"gray",italic:true}],"minecraft:custom_data":{artc_rarity:"ornate"}}}}

# Trade 15: Exquisite Artifact Crate for 32 Artifact Shards
data modify entity @s Offers.Recipes append value {max_uses:16,xp:20,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:amethyst_shard",count:32,components:{"minecraft:custom_data":{artifact_shard:true}}},sell:{id:"minecraft:barrel",count:1,components:{"minecraft:container_loot":{loot_table:"evercraft:crates/artifact_exquisite"},"minecraft:custom_name":{text:"Exquisite Artifact Crate",bold:true,italic:true,color:"light_purple"},"minecraft:lore":[{text:"Place to reveal your artifact!",color:"gray",italic:true}],"minecraft:custom_data":{artc_rarity:"exquisite"}}}}

# ===== TRANSMUTATION STAND (buy with Netherite Blocks) =====
# Trade 16: Transmutation Stand for 4 Netherite Blocks
data modify entity @s Offers.Recipes append value {max_uses:1,xp:10,uses:0,priceMultiplier:0.0f,specialPrice:0,demand:0,rewardExp:1b,buy:{id:"minecraft:netherite_block",count:4},sell:{id:"minecraft:lodestone",count:1,components:{"minecraft:custom_name":{text:"Transmutation Stand",color:"light_purple",italic:false,bold:true},"minecraft:lore":[{text:"Place and right-click to transmute",color:"gray",italic:false},{text:"artifacts into higher tiers.",color:"gray",italic:false},{text:"",italic:false},{text:"5 Common/Uncommon \u279c next tier",color:"dark_gray",italic:false},{text:"4 Rare/Ornate \u279c next tier",color:"dark_gray",italic:false},{text:"3 Exquisite \u279c Mythical",color:"dark_gray",italic:false},{text:"",italic:false},{text:"Artificer discount: -1 (1/day)",color:"dark_purple",italic:false}],"minecraft:custom_data":{artificers_anvil:1b},"minecraft:enchantment_glint_override":true,"minecraft:rarity":"epic"}}}
