# Commands to run every second

execute if entity @s[tag=myriad.nether_reactor_core.on] run return run function myriad:block/nether_reactor_core/check_casing/on
function myriad:block/nether_reactor_core/check_casing/off