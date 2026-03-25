# Offset each entry after the modified entry on the same page

# Copy the list of start values on this page
$data modify storage myriad:temp root.starts set from storage myriad:temp root.compendium.page_starts[{page:$(page)}].starts
# List size
execute store result score #temp_2 myriad.dummy run data get storage myriad:temp root.starts
# Reset variables
scoreboard players set #temp_0 myriad.dummy 0
scoreboard players set #temp_1 myriad.dummy 0
scoreboard players set #temp_offset myriad.dummy 0

# Start the loop
function myriad:item/compendium/data/update_starts/loop

# Save the modified list
$data modify storage myriad:temp root.compendium.page_starts[{page:$(page)}].starts set from storage myriad:temp root.starts
function myriad:item/compendium/data/set/main
