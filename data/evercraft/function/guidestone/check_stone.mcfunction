# Guidestone — Check stone and open menu
# Run as the marker entity
# All guidestones are auto-registered on placement, so just open the menu

execute as @a[distance=..5,limit=1,sort=nearest] at @s run function evercraft:guidestone/menu/open
