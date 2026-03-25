# Chooses which recipe style to use

# If none of the side slots are filled, return
execute unless items block ~ ~ ~ container.3 * unless items block ~ ~ ~ container.11 * unless items block ~ ~ ~ container.13 * unless items block ~ ~ ~ container.21 * run return 0

# If decorated pot, decorate pot
execute if items block ~ ~ ~ container.12 minecraft:decorated_pot run return run function myriad:block/pottery_table/crafting/create_output/decorate_pot/main

# Otherwise, it's sherd duplication
function myriad:block/pottery_table/crafting/create_output/duplicate_sherd