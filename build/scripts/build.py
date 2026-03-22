#!/usr/bin/env python3
"""
Forevercraft Modular Datapack Builder
Assembles a custom datapack from selected modules.

Usage: python3 build.py --modules core,cooking,housing --output ./dist
"""

import argparse
import json
import os
import re
import shutil
import zipfile
from collections import defaultdict
from pathlib import Path

SCRIPT_DIR = Path(__file__).parent
BUILD_DIR = SCRIPT_DIR.parent
FRAGMENTS_DIR = BUILD_DIR / 'fragments'
GRAPH_PATH = BUILD_DIR.parent / 'src' / 'data' / 'module-graph.json'
DATAPACK_DIR = Path('/Users/Josep/Library/Application Support/minecraft/saves/Testing/datapacks/Forevercraft')

# Module → function directories mapping
MODULE_DIRS = {
    'core': ['daylight', 'day_counter', 'moon', 'visual_time', 'movement', 'cleanup',
             'watchdog', 'common', 'util', 'admin', 'tomb', 'newcomer', 'difficulty',
             'news', 'items', 'potions', 'stats', 'campfire_heal', 'bottles',
             'crop_harvest', 'xp_magnet', 'armored_elytra', 'arrows'],
    'dream-rate': ['dreams', 'briefing', 'breakdown', 'dream_echoes', 'luck_buffs'],
    'crates': ['crate_anim', 'crates', 'structures', 'treasure', 'artifact_crates',
               'companion_crates', 'mob_crates', 'fishing', 'harvest'],
    'artifacts': ['artifacts', 'codex', 'ecodex', 'phoenix', 'affinity',
                  'constellations', 'harmonize', 'patina', 'transmute',
                  'glyphforge', 'hero_satchel', 'satchel', 'chrono_shard',
                  'event', 'tome'],
    'classes': ['dual_swordsman', 'spirit'],
    'mastery': ['weapon_mastery', 'armor_mastery', 'mastery'],
    'advantage': ['advantage', 'claim', 'trophy', 'titles'],
    'companions': ['companions', 'companion_evolution', 'pet_duel',
                   'mount_training', 'tamed_bond'],
    'quests': ['quests', 'bounty', 'bounty_board', 'village'],
    'combat-instances': ['dungeon', 'raids', 'castle', 'heist', 'spirit_raid'],
    'cooking': ['cooking', 'pantry'],
    'housing': ['housing', 'laborer'],
    'guilds': ['guild'],
    'social': ['friends', 'duel', 'party', 'competition', 'challenge'],
    'lore': ['lore', 'journal', 'anecdotes', 'campfire_stories', 'inscription'],
    'guidestones': ['guidestone', 'portal_dial'],
    'spirit-weapons': ['spirit_tome'],
    'craftforever': ['craftforever', 'craft_affinity', 'node_variants'],
    'world-systems': ['seasons', 'calendar', 'world_events', 'world',
                      'mobs', 'health_bar', 'bosses', 'night_terrors',
                      'encounters', 'biome', 'biome_mastery', 'cave_darkness',
                      'forage', 'prospect', 'convergence', 'omens',
                      'reaper'],
    'professions': ['professions'],
    'bestiary': ['bestiary'],
    'milestones': ['milestones'],
    'cosmetics': ['trim', 'trim_effects'],
    'gacha': ['gacha'],
    'black-market': ['black_market'],
    'dreaming-realm': ['dreaming_realm'],
    'buddy-system': ['buddy', 'tamed_protection', 'foxes', 'ocelots',
                     'cats', 'parrots', 'horses', 'happy_ghast'],
}


def load_graph():
    with open(GRAPH_PATH) as f:
        return json.load(f)


def resolve_dependencies(selected, graph):
    """Resolve all required dependencies recursively. Always includes 'core'."""
    modules = {m['id']: m for m in graph['modules']}
    edges = graph['edges']

    resolved = set(['core'])
    to_process = set(selected) | {'core'}

    while to_process:
        current = to_process.pop()
        if current in resolved and current != 'core':
            continue
        resolved.add(current)

        # Find required dependencies
        for edge in edges:
            if edge['from'] == current and edge['type'] == 'required':
                dep = edge['to']
                if dep not in resolved:
                    to_process.add(dep)

    # Check for full-pack-only modules
    warnings = []
    for mod_id in list(resolved):
        mod = modules.get(mod_id, {})
        if mod.get('fullPackOnly'):
            warnings.append(f"⚠ '{mod_id}' is full-pack only and cannot be downloaded standalone")
            resolved.discard(mod_id)

    # Check for missing optional deps
    for mod_id in resolved:
        for edge in edges:
            if edge['from'] == mod_id and edge['type'] == 'optional':
                if edge['to'] not in resolved:
                    reason = edge.get('reason', 'integration feature')
                    warnings.append(f"ℹ '{mod_id}' has optional dependency on '{edge['to']}' ({reason}) — will be stubbed")

    return sorted(resolved), warnings


def collect_files(resolved_modules):
    """Collect all files from the datapack that belong to resolved modules."""
    func_base = DATAPACK_DIR / 'data' / 'evercraft' / 'function'
    adv_base = DATAPACK_DIR / 'data' / 'evercraft' / 'advancement'
    loot_base = DATAPACK_DIR / 'data' / 'evercraft' / 'loot_table'
    pred_base = DATAPACK_DIR / 'data' / 'evercraft' / 'predicate'

    collected = {}  # relative_path → absolute_path

    for mod_id in resolved_modules:
        dirs = MODULE_DIRS.get(mod_id, [])
        for dir_name in dirs:
            # Functions
            func_dir = func_base / dir_name
            if func_dir.exists():
                for f in func_dir.rglob('*'):
                    if f.is_file():
                        rel = f.relative_to(DATAPACK_DIR)
                        collected[str(rel)] = str(f)

            # Advancements
            adv_dir = adv_base / dir_name
            if adv_dir.exists():
                for f in adv_dir.rglob('*'):
                    if f.is_file():
                        rel = f.relative_to(DATAPACK_DIR)
                        collected[str(rel)] = str(f)

            # Loot tables
            loot_dir = loot_base / dir_name
            if loot_dir.exists():
                for f in loot_dir.rglob('*'):
                    if f.is_file():
                        rel = f.relative_to(DATAPACK_DIR)
                        collected[str(rel)] = str(f)

            # Predicates
            pred_dir = pred_base / dir_name
            if pred_dir.exists():
                for f in pred_dir.rglob('*'):
                    if f.is_file():
                        rel = f.relative_to(DATAPACK_DIR)
                        collected[str(rel)] = str(f)

    return collected


def assemble_monolithic(resolved_modules, output_dir):
    """Assemble tick.mcfunction, init.mcfunction from fragments."""
    func_dir = Path(output_dir) / 'data' / 'evercraft' / 'function'
    func_dir.mkdir(parents=True, exist_ok=True)

    # Assemble init.mcfunction
    init_parts = []
    init_parts.append('# Forevercraft Init — Custom Build')
    init_parts.append(f'# Modules: {", ".join(resolved_modules)}')
    init_parts.append('')

    for mod_id in resolved_modules:
        frag_path = FRAGMENTS_DIR / mod_id / 'init_fragment.mcfunction'
        if frag_path.exists():
            with open(frag_path) as f:
                content = f.read().strip()
            if content:
                init_parts.append(f'\n# ══════════ MODULE: {mod_id.upper()} ══════════')
                init_parts.append(content)

    with open(func_dir / 'init.mcfunction', 'w') as f:
        f.write('\n'.join(init_parts))

    # Assemble tick.mcfunction
    tick_parts = []
    tick_parts.append('# Forevercraft Main Tick — Custom Build')
    tick_parts.append(f'# Modules: {", ".join(resolved_modules)}')
    tick_parts.append('')

    for mod_id in resolved_modules:
        frag_path = FRAGMENTS_DIR / mod_id / 'tick_fragment.mcfunction'
        if frag_path.exists():
            with open(frag_path) as f:
                content = f.read().strip()
            if content:
                tick_parts.append(f'\n# ══════════ MODULE: {mod_id.upper()} ══════════')
                tick_parts.append(content)

    with open(func_dir / 'tick.mcfunction', 'w') as f:
        f.write('\n'.join(tick_parts))

    # Assemble on_join if exists
    on_join_parts = []
    for mod_id in resolved_modules:
        frag_path = FRAGMENTS_DIR / mod_id / 'on_join_fragment.mcfunction'
        if frag_path.exists():
            with open(frag_path) as f:
                content = f.read().strip()
            if content:
                on_join_parts.append(content)

    if on_join_parts:
        dreams_dir = func_dir / 'dreams'
        dreams_dir.mkdir(parents=True, exist_ok=True)
        with open(dreams_dir / 'on_join.mcfunction', 'w') as f:
            f.write('\n\n'.join(on_join_parts))


def generate_stubs(collected, resolved_modules, output_dir):
    """Scan all collected mcfunctions for cross-module calls and generate stubs."""
    func_dir = Path(output_dir) / 'data' / 'evercraft' / 'function'
    stubs_generated = 0

    # Collect all function paths that exist
    existing = set()
    for rel_path in collected:
        if rel_path.endswith('.mcfunction'):
            # Extract function name from path
            # data/evercraft/function/foo/bar.mcfunction → foo/bar
            match = re.match(r'data/evercraft/function/(.+)\.mcfunction', rel_path)
            if match:
                existing.add(match.group(1))

    # Also add assembled functions
    for f in func_dir.rglob('*.mcfunction'):
        rel = f.relative_to(func_dir)
        existing.add(str(rel).replace('.mcfunction', '').replace(os.sep, '/'))

    # Scan all mcfunctions for function calls
    needed = set()
    for rel_path, abs_path in collected.items():
        if not rel_path.endswith('.mcfunction'):
            continue
        try:
            with open(abs_path) as f:
                for line in f:
                    line = line.strip()
                    if line.startswith('#'):
                        continue
                    # Match: function evercraft:path/to/func
                    for m in re.finditer(r'function evercraft:([a-z0-9_/]+)', line):
                        needed.add(m.group(1))
        except Exception:
            pass

    # Generate stubs for missing functions
    missing = needed - existing
    for func_name in sorted(missing):
        stub_path = func_dir / f'{func_name}.mcfunction'
        stub_path.parent.mkdir(parents=True, exist_ok=True)
        with open(stub_path, 'w') as f:
            f.write(f'# STUB: Module not included — this function is a no-op\n')
        stubs_generated += 1

    return stubs_generated, missing


def assemble_tags(resolved_modules, output_dir):
    """Create tick.json and load.json tags."""
    mc_tags = Path(output_dir) / 'data' / 'minecraft' / 'tags' / 'function'
    mc_tags.mkdir(parents=True, exist_ok=True)

    # tick.json — always includes main tick; add per-module tick entries
    tick_entries = ['evercraft:tick']

    if 'crates' in resolved_modules:
        tick_entries.insert(0, 'evercraft:structures/tick')
        tick_entries.append('evercraft:treasure/tick')
    if 'companions' in resolved_modules:
        tick_entries.append('evercraft:companions/tick')
    if 'cosmetics' in resolved_modules:
        tick_entries.append('evercraft:trim/tick')
        tick_entries.append('evercraft:trim_effects/tick')

    with open(mc_tags / 'tick.json', 'w') as f:
        json.dump({'values': tick_entries}, f, indent=2)

    # load.json — init function
    load_entries = ['evercraft:init']

    # Add per-module load entries from the original load.json
    original_load = DATAPACK_DIR / 'data' / 'minecraft' / 'tags' / 'function' / 'load.json'
    if original_load.exists():
        with open(original_load) as f:
            original = json.load(f)

        # Filter to only include entries whose module is resolved
        for entry in original.get('values', []):
            func_name = entry.replace('evercraft:', '')
            # Check if this function's top-level dir is in a resolved module
            top_dir = func_name.split('/')[0]
            for mod_id in resolved_modules:
                if top_dir in MODULE_DIRS.get(mod_id, []):
                    if entry not in load_entries:
                        load_entries.append(entry)
                    break

    with open(mc_tags / 'load.json', 'w') as f:
        json.dump({'values': load_entries}, f, indent=2)


def copy_pack_meta(output_dir):
    """Copy pack.mcmeta."""
    src = DATAPACK_DIR / 'pack.mcmeta'
    if src.exists():
        shutil.copy2(str(src), str(Path(output_dir) / 'pack.mcmeta'))


def create_zip(output_dir, zip_path):
    """Create a ZIP file from the output directory."""
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zf:
        for root, dirs, files in os.walk(output_dir):
            for file in files:
                file_path = os.path.join(root, file)
                arc_name = os.path.join('Forevercraft', os.path.relpath(file_path, output_dir))
                zf.write(file_path, arc_name)


def build(selected_modules, output_path, create_archive=True):
    """Main build function."""
    print('╔══════════════════════════════════════════╗')
    print('║  Forevercraft Modular Datapack Builder   ║')
    print('╚══════════════════════════════════════════╝')
    print()

    graph = load_graph()

    # 1. Resolve dependencies
    print('1. Resolving dependencies...')
    resolved, warnings = resolve_dependencies(selected_modules, graph)
    print(f'   Selected: {", ".join(selected_modules)}')
    print(f'   Resolved: {", ".join(resolved)} ({len(resolved)} modules)')
    for w in warnings:
        print(f'   {w}')
    print()

    # 2. Collect files
    print('2. Collecting files...')
    collected = collect_files(resolved)
    print(f'   {len(collected)} files collected')
    print()

    # 3. Prepare output directory
    output_dir = Path(output_path)
    if output_dir.exists():
        shutil.rmtree(str(output_dir))
    output_dir.mkdir(parents=True)

    # 4. Copy collected files
    print('3. Copying files...')
    for rel_path, abs_path in collected.items():
        dest = output_dir / rel_path
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(abs_path, str(dest))
    print(f'   {len(collected)} files copied')
    print()

    # 5. Assemble monolithic files
    print('4. Assembling tick.mcfunction + init.mcfunction...')
    assemble_monolithic(resolved, str(output_dir))
    print('   ✅ Assembled')
    print()

    # 6. Assemble tags
    print('5. Assembling tick.json + load.json...')
    assemble_tags(resolved, str(output_dir))
    print('   ✅ Assembled')
    print()

    # 7. Generate stubs
    print('6. Generating stubs for missing cross-references...')
    stub_count, missing = generate_stubs(collected, resolved, str(output_dir))
    print(f'   {stub_count} stubs generated')
    if missing and len(missing) <= 20:
        for m in sorted(missing)[:20]:
            print(f'     → {m}')
    print()

    # 8. Copy pack.mcmeta
    copy_pack_meta(str(output_dir))

    # 9. Create ZIP
    if create_archive:
        zip_path = str(output_dir) + '.zip'
        print(f'7. Creating ZIP archive...')
        create_zip(str(output_dir), zip_path)
        size_mb = os.path.getsize(zip_path) / (1024 * 1024)
        print(f'   ✅ {zip_path} ({size_mb:.1f} MB)')

    print()
    print('╔══════════════════════════════════════════╗')
    print('║  ✅ Build complete!                      ║')
    print('╚══════════════════════════════════════════╝')

    return resolved, collected, stub_count


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Forevercraft Modular Datapack Builder')
    parser.add_argument('--modules', required=True, help='Comma-separated module IDs')
    parser.add_argument('--output', default='./dist/Forevercraft', help='Output directory')
    parser.add_argument('--no-zip', action='store_true', help='Skip ZIP creation')
    args = parser.parse_args()

    modules = [m.strip() for m in args.modules.split(',')]
    build(modules, args.output, create_archive=not args.no_zip)
