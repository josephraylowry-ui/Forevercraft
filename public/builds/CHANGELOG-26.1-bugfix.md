# Forevercraft v26.1 — Major Bug Fix & Optimization Update

## Bug Fixes (~200 bugs fixed)

### Critical Fixes
- **Story Mode**: Convergence rewards now properly granted (were silently skipped due to variable clear order)
- **Story Mode**: Ch1 "Open the Codex" step now detects properly (missing hook added)
- **Story Mode**: Branch 7 infinite recursion loop fixed with guard tag
- **Story Mode**: 48 non-monotonic quest thresholds fixed (steps auto-completing out of order)
- **Story Mode**: 50+ phantom scoreboards mapped to real system equivalents
- **Story Mode**: Ch50 Legend's Crown enchantment format fixed
- **Spirit Weapons**: All 14 weapon abilities now last correct duration (double timer decrement removed)
- **Infinite Castle**: Boss floors no longer spawn 5x bosses (wave gate added)
- **Alchemy System**: Potions are now actually given after completing the minigame (dispatch implemented for all 21 recipes)
- **Quest Book**: Free reroll exploit patched (options now persist until paid reroll or daily reset)
- **Companions**: Pet sharing bug in multiplayer fixed (ID verification added to 100+ files)
- **Quest System**: Tier 5/6 quests no longer auto-complete from lifetime stats (delta tracking added)
- **Advancement Rewards**: Iron gate check now properly registered (all crate rewards were blocked)

### High Priority Fixes
- **Companions**: 6 gacha-exclusive companions (Starweaver, Somnia, Lunar Moth, Nebula Kit, Twilight Hare, Dreamstag) now have working passive abilities on level-up
- **Companions**: `weather clear` no longer fires on every pet unsummon
- **Night Terrors**: Inscription stone ward now works (was checking wrong entity tag)
- **Trophies**: World Explorer and Lore Keeper trophies now earnable (wrong scoreboard names fixed)
- **Dream Rank**: Mob kills and crates opened now properly contribute to rank calculation
- **Convergence**: Modifier ID fixed across all files (ghost +2.0 DR modifier no longer persists)
- **Raids**: Boss ability timers now properly registered
- **Grand Forge**: Phase 4 kill tracking now works
- **Guilds**: Guild rank progression and merchant XP now functional

### Moderate Fixes
- **Biome Journal**: Biome 24 correctly displays as "Windswept Hills" across all systems
- **Milestones**: Percentage calculations use correct constant scoreboard
- **PvP**: Ashcrown resistance aura and Lifewoven sanctuary no longer buff opponents
- **Codex Hub**: Session Recap click no longer uses stale values
- **Version Compliance**: All remaining old SNBT, enchantment, equipment, and click event formats updated to 26.1

### Quality Fixes
- **Story Mode**: quest_goal display corrected in 430+ chapter start files
- 30+ schedule calls given `replace` keyword (prevents stacking on /reload)
- 32 advancement files identified for predicate format modernization
- Debug tellraw messages removed from production code

### Blueprint System Fixes
- **T3 Blacksmith**: Fixed reference mismatch (`blacksmith` -> `blacksmith_forge`)
- **T3 Bridge**: Fixed reference mismatch (`bridge` -> `stone_bridge`)
- **T7 Harbor**: Fixed reference mismatch (`harbor` -> `harbor_complex`)
- **Confirm**: Added collision re-check at confirm time (world could change during 30s preview window)
- **T7 Materials**: Fixed reagent overclear — now takes 3 total across types instead of 3 from each (was consuming up to 9)
- **Preview Tick**: Fixed schedule stacking (`append` -> `replace`)

## New Content
- **Story Mode**: 370+ files created for branch chapters (narratives, objectives, check files)
- **Branch 7**: Compatibility shim added for universal completion system integration
- **Branch 8**: 192 files created (48 check + 144 objective files)

## Performance Optimizations
- **Dream Rank**: Existence gate added (skips 70+ scoreboard ops when server is empty)
- **Raid Bosses**: `return run` dispatch saves 12 score checks per tick during fights
- **World Bosses**: `return run` dispatch saves 10 score checks per second
- **Wild Companions**: Follow carrier throttled from every tick to every 3 ticks (67% reduction)
- **Showcase Aura**: Existence gate skips 6 entity scans/sec when no story players active
- **Craft Rate**: Player gate prevents recalculation on empty server
- **Forage/Prospect**: 16-command NBT distance calculation replaced with 1-command entity distance check
- **Buddy System**: 5 entity+predicate scans consolidated to 1 per player per second
- **Guild Buffs**: Attribute modifiers cached by rank (zero attribute ops in steady state)
- **Inscription**: Resonance detection skips remaining 9 checks after first match
- **Craft Affinity**: Permanent tick gated to stage 7 players only
- **Raid Boss Init**: 6 redundant entity checks removed from child tick functions

## Technical
- Pack format: 101.1 (Minecraft Java 26.1)
- Files: ~26,830
- Systems: 149 interconnected
