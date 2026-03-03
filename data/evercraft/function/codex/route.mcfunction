# Codex trigger routing — only called when a player has ec.codex=1+
# Separated from tick to avoid 40+ score checks every tick (OPT Session 76)

# Main menu (value 1 or default)
execute as @a[scores={ec.codex=1}] run function evercraft:codex/display

# === RARITY SUB-MENUS ===
execute as @a[scores={ec.codex=10}] run function evercraft:codex/menu/common
execute as @a[scores={ec.codex=20}] run function evercraft:codex/menu/uncommon
execute as @a[scores={ec.codex=30}] run function evercraft:codex/menu/rare
execute as @a[scores={ec.codex=40}] run function evercraft:codex/menu/ornate
execute as @a[scores={ec.codex=50}] run function evercraft:codex/menu/exquisite
execute as @a[scores={ec.codex=60}] run function evercraft:codex/menu/mythical

# === COMMON CATEGORY PAGES ===
execute as @a[scores={ec.codex=11}] run function evercraft:codex/pages/common/weapons
execute as @a[scores={ec.codex=12}] run function evercraft:codex/pages/common/armor
execute as @a[scores={ec.codex=13}] run function evercraft:codex/pages/common/accessories
execute as @a[scores={ec.codex=14}] run function evercraft:codex/pages/common/tools

# === UNCOMMON CATEGORY PAGES ===
execute as @a[scores={ec.codex=21}] run function evercraft:codex/pages/uncommon/weapons
execute as @a[scores={ec.codex=22}] run function evercraft:codex/pages/uncommon/armor
execute as @a[scores={ec.codex=23}] run function evercraft:codex/pages/uncommon/accessories
execute as @a[scores={ec.codex=24}] run function evercraft:codex/pages/uncommon/tools

# === RARE CATEGORY PAGES ===
execute as @a[scores={ec.codex=31}] run function evercraft:codex/pages/rare/weapons
execute as @a[scores={ec.codex=32}] run function evercraft:codex/pages/rare/armor
execute as @a[scores={ec.codex=33}] run function evercraft:codex/pages/rare/accessories
execute as @a[scores={ec.codex=34}] run function evercraft:codex/pages/rare/tools

# === ORNATE CATEGORY PAGES ===
execute as @a[scores={ec.codex=41}] run function evercraft:codex/pages/ornate/weapons
execute as @a[scores={ec.codex=42}] run function evercraft:codex/pages/ornate/armor
execute as @a[scores={ec.codex=43}] run function evercraft:codex/pages/ornate/accessories
execute as @a[scores={ec.codex=44}] run function evercraft:codex/pages/ornate/tools

# === EXQUISITE CATEGORY PAGES ===
execute as @a[scores={ec.codex=51}] run function evercraft:codex/pages/exquisite/weapons
execute as @a[scores={ec.codex=52}] run function evercraft:codex/pages/exquisite/armor
execute as @a[scores={ec.codex=53}] run function evercraft:codex/pages/exquisite/accessories

# === MYTHICAL CATEGORY PAGES ===
execute as @a[scores={ec.codex=61}] run function evercraft:codex/pages/mythical/weapons
execute as @a[scores={ec.codex=62}] run function evercraft:codex/pages/mythical/armor
execute as @a[scores={ec.codex=63}] run function evercraft:codex/pages/mythical/accessories

# === INDIVIDUAL ARTIFACT ABILITY DISPLAYS ===
execute as @a[scores={ec.codex=100..112}] run function evercraft:codex/abilities/route_common
execute as @a[scores={ec.codex=113..125}] run function evercraft:codex/abilities/route_uncommon
execute as @a[scores={ec.codex=126..145}] run function evercraft:codex/abilities/route_rare
execute as @a[scores={ec.codex=146..236}] run function evercraft:codex/abilities/route_ornate
execute as @a[scores={ec.codex=237..296}] run function evercraft:codex/abilities/route_exquisite
execute as @a[scores={ec.codex=297..373}] run function evercraft:codex/abilities/route_mythical
execute as @a[scores={ec.codex=374..391}] run function evercraft:codex/abilities/route_ornate_tools
execute as @a[scores={ec.codex=392}] run function evercraft:codex/abilities/rare/ruin_watch
execute as @a[scores={ec.codex=393..425}] run function evercraft:codex/abilities/route_armor_tools
