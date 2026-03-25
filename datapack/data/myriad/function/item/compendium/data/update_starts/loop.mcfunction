# Offset each entry after the modified entry on the same page

# Offset the entry if an offset has been found
scoreboard players set #temp_0 myriad.dummy 0
execute unless score #temp_offset myriad.dummy matches 0 store result score #temp_0 myriad.dummy run data get storage myriad:temp root.starts[-1].start
execute unless score #temp_offset myriad.dummy matches 0 run scoreboard players operation #temp_0 myriad.dummy += #temp_offset myriad.dummy
execute unless score #temp_offset myriad.dummy matches 0 store result storage myriad:temp root.starts[-1].start int 1 run scoreboard players get #temp_0 myriad.dummy

# Get any offsets to use
scoreboard players set #temp_0 myriad.dummy 0
execute store result score #temp_0 myriad.dummy run data get storage myriad:temp root.starts[-1].temp_offset
scoreboard players operation #temp_offset myriad.dummy += #temp_0 myriad.dummy

# Cycle through the list
# Deletes any entries where an offset is found, due to them not being needed anymore
# (Technically supports applying multiple offsets, but that's never used)
execute unless data storage myriad:temp root.starts[-1].temp_offset run data modify storage myriad:temp root.starts prepend from storage myriad:temp root.starts[-1]
data remove storage myriad:temp root.starts[-1]

# Continue the loop
# Can't use the method of deleting entries until there are none left, due to the modified list being used afterwards
scoreboard players add #temp_1 myriad.dummy 1
execute if score #temp_1 myriad.dummy < #temp_2 myriad.dummy run function myriad:item/compendium/data/update_starts/loop
