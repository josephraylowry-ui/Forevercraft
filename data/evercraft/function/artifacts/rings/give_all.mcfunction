# Give all ring artifacts to the player
# /function evercraft:artifacts/rings/give_all

# === COMMON RINGS ===
give @s minecraft:amethyst_shard[custom_name={text:"Amethyst Ring",italic:false},lore=[{text:"A simple ring set with amethyst.",color:"gray",italic:false},"",{text:"Effect: Night Vision",color:"aqua",italic:false},"",{text:"Common Ring",color:"white",italic:false}],custom_data={artifact:"ring_amethyst",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:lapis_lazuli[custom_name={text:"Lapis Ring",italic:false},lore=[{text:"A ring of deep ocean blue.",color:"gray",italic:false},"",{text:"Effect: Water Breathing",color:"blue",italic:false},"",{text:"Common Ring",color:"white",italic:false}],custom_data={artifact:"ring_lapis",is_artifact:true,ring:true},enchantment_glint_override=true] 1

# === UNCOMMON RINGS ===
give @s minecraft:redstone[custom_name={text:"Redstone Ring",italic:false},lore=[{text:"A ring humming with energy.",color:"gray",italic:false},"",{text:"Effect: Haste",color:"yellow",italic:false},"",{text:"Uncommon Ring",color:"blue",italic:false}],custom_data={artifact:"ring_redstone",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:diamond[custom_name={text:"Diamond Ring",italic:false},lore=[{text:"A brilliant diamond set in gold.",color:"gray",italic:false},"",{text:"Effect: Speed",color:"aqua",italic:false},"",{text:"Uncommon Ring",color:"blue",italic:false}],custom_data={artifact:"ring_diamond",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:slime_ball[custom_name={text:"Slime Ring",italic:false},lore=[{text:"A bouncy ring of condensed slime.",color:"gray",italic:false},"",{text:"Effect: Jump Boost",color:"green",italic:false},"",{text:"Uncommon Ring",color:"blue",italic:false}],custom_data={artifact:"ring_slime",is_artifact:true,ring:true},enchantment_glint_override=true] 1

# === RARE RINGS ===
give @s minecraft:emerald[custom_name={text:"Emerald Ring",italic:false},lore=[{text:"A ring favored by villager nobles.",color:"gray",italic:false},"",{text:"Effect: Hero of the Village",color:"gold",italic:false},"",{text:"Rare Ring",color:"aqua",italic:false}],custom_data={artifact:"ring_emerald",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:bone[custom_name={text:"Bone Ring",italic:false},lore=[{text:"Carved from ancient remains.",color:"gray",italic:false},"",{text:"Aura: Weakness to mobs (5 blocks)",color:"dark_gray",italic:false},"",{text:"Rare Ring",color:"aqua",italic:false}],custom_data={artifact:"ring_bone",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:honeycomb[custom_name={text:"Honey Ring",italic:false},lore=[{text:"Crystallized honey from ancient bees.",color:"gray",italic:false},"",{text:"Aura: Slowness to mobs (5 blocks)",color:"yellow",italic:false},"",{text:"Rare Ring",color:"aqua",italic:false}],custom_data={artifact:"ring_honey",is_artifact:true,ring:true},enchantment_glint_override=true] 1

# === ORNATE RINGS ===
give @s minecraft:netherite_scrap[custom_name={text:"Nether Ring",italic:false},lore=[{text:"Forged in the depths of the Nether.",color:"gray",italic:false},"",{text:"Effect: Resistance II",color:"blue",italic:false},"",{text:"Ornate Ring",color:"dark_purple",italic:false}],custom_data={artifact:"ring_nether",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:trial_key[custom_name={text:"Trial Ring",italic:false},lore=[{text:"Won from countless trials.",color:"gray",italic:false},"",{text:"Aura: Glowing to mobs (10 blocks)",color:"white",italic:false},"",{text:"Ornate Ring",color:"dark_purple",italic:false}],custom_data={artifact:"ring_trial",is_artifact:true,ring:true},enchantment_glint_override=true] 1

# === EXQUISITE RINGS ===
give @s minecraft:ominous_trial_key[custom_name={text:"Ominous Ring",italic:false},lore=[{text:"Pulsing with dark power.",color:"gray",italic:false},"",{text:"Effect:healthBoost II",color:"red",italic:false},"",{text:"Exquisite Ring",color:"light_purple",italic:false}],custom_data={artifact:"ring_ominous",is_artifact:true,ring:true},enchantment_glint_override=true] 1

give @s minecraft:echo_shard[custom_name={text:"Warden Ring",italic:false},lore=[{text:"Carved from sculk-touched bone.",color:"gray",italic:false},"",{text:"Effect: Strength II",color:"red",italic:false},"",{text:"Exquisite Ring",color:"light_purple",italic:false}],custom_data={artifact:"ring_warden",is_artifact:true,ring:true},enchantment_glint_override=true] 1

# === MYTHICAL RINGS ===
give @s minecraft:ender_eye[custom_name={text:"Void Ring",italic:false},lore=[{text:"A ring that touches the void itself.",color:"gray",italic:false},"",{text:"Effects:",color:"gold",italic:false},{text:"  • Resistance II",color:"blue",italic:false},{text:"  • Fire Resistance",color:"red",italic:false},{text:"  • Slow Falling",color:"white",italic:false},"",{text:"Mythical Ring",color:"gold",bold:true,italic:false}],custom_data={artifact:"ring_void",is_artifact:true,ring:true},rarity=epic,enchantment_glint_override=true] 1

tellraw @s ["",{text:"You received all ",color:"gray"},{text:"Ring Artifacts",color:"dark_purple",bold:true},{text:"!",color:"gray"}]
