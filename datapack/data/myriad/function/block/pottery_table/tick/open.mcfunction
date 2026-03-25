# Commands to run tickly for open pottery tables

# Add tag
tag @s add myriad.pottery_table.open

# Don't run any checks if the pottery table is empty
execute unless items block ~ ~ ~ container.* * run return 0

# Check if the contents of the barrel have changed at all while keeping track of the previous tick's items
data modify entity @s data.myriad.old_barrel_items set from entity @s data.myriad.current_barrel_items
execute store success score @s myriad.dummy run data modify entity @s data.myriad.current_barrel_items set from block ~ ~ ~ Items

# If the pottery table was JUST reopened, it should update and recreate the recipe (as the output is cleared when closed)
scoreboard players set @s[tag=myriad.pottery_table.update_on_next_open] myriad.dummy 1
execute if entity @s[scores={myriad.dummy=1..}] run function myriad:block/pottery_table/crafting/barrel_updated

# Fix hopper minecarts being evil little garbage machines
execute positioned ~ ~-2 ~ as @e[type=minecraft:hopper_minecart,dy=2,tag=!smithed.entity] at @s run function myriad:block/pottery_table/tick/hopper_minecart