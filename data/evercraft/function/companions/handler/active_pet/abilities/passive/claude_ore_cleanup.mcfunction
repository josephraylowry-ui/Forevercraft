# Claude Ore Sight - Cleanup ore marker armor stands
# Called on schedule 5s after ore scan to remove all glowing markers
kill @e[type=armor_stand, tag=Pets.OreMarker]
