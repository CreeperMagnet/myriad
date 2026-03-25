# Commands to run tickly for pottery tables

# Make archaeologist villagers
execute as @e[type=minecraft:villager,distance=..2,nbt={VillagerData:{profession:"minecraft:fisherman"},Xp:0},tag=!myriad.archaeologist,tag=!smithed.entity] if data entity @s Brain.memories."minecraft:job_site" run function myriad:block/pottery_table/check_villager

# When the barrel closes for the first time, run the closing function. Otherwise, stop checking for other states
execute if block ~ ~ ~ minecraft:barrel[open=false] if entity @s[tag=myriad.pottery_table.open] run return run function myriad:block/pottery_table/tick/close
execute if block ~ ~ ~ minecraft:barrel[open=false] run return 0

# Break if there is no barrel
execute unless block ~ ~ ~ minecraft:barrel run return run function myriad:block/pottery_table/break/main

# Run the open function if everything else fails
function myriad:block/pottery_table/tick/open