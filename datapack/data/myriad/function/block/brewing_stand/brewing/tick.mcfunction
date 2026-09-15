# Functions to run off of brewing stand markers every tick

# This functionality forces the brewing stand to brew due to not being proper recipes - this is done by expensive data operations
execute unless items block ~ ~ ~ container.3 * run return fail
execute if data block ~ ~ ~ {Fuel:0} run return fail
execute unless data block ~ ~ ~ {BrewTime:0} run return fail
execute unless items block ~ ~ ~ container.* *[minecraft:custom_data~{myriad:{}}] run return fail
execute unless function myriad:block/brewing_stand/brewing/check_force_cases run return run scoreboard players reset @s myriad.dummy2
function myriad:block/brewing_stand/brewing/increase_state