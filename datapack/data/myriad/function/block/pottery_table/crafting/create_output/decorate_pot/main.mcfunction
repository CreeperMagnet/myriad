# Chooses which type of pot is used

execute if items block ~ ~ ~ container.12 *[minecraft:custom_data~{myriad:{id:"decorated_pot"}}] run return run function myriad:block/pottery_table/crafting/create_output/decorate_pot/custom/main

function myriad:block/pottery_table/crafting/create_output/decorate_pot/vanilla
