# Forevercraft Codex Generation Function
# This function generates a book showing all collected artifacts
# Called when player uses The Forevercraft Codex item

# Clear old book if present
clear @s written_book[custom_data~{codex:true}]

# Give the updated codex book with all collected artifacts
function evercraft:codex/build_book
