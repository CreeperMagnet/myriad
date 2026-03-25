# Loops through the injections to use

# Start the injection process
function myriad:item/compendium/unlock/inject/set_points with storage myriad:temp root.page_injections[-1]

execute if entity @s[tag=myriad.invalid_page] run return 0

# Get an calculate the offset caused by this injection
execute store result score #temp_0 myriad.dummy run data get storage myriad:temp root.page_injections[-1].injection
execute store result score #temp_1 myriad.dummy run data get storage myriad:temp root.page_injections[-1].length

scoreboard players operation #temp_0 myriad.dummy -= #temp_1 myriad.dummy
# Add the offset to this page's combined offsets
scoreboard players operation #temp_combined_offset myriad.dummy += #temp_0 myriad.dummy

# Update the injection positions for this page
function myriad:item/compendium/unlock/inject/update_starts with storage myriad:temp root.page_injections[-1]

# Remove this injection from the list and continue to loop
data remove storage myriad:temp root.page_injections[-1]
execute if data storage myriad:temp root.page_injections[-1] run function myriad:item/compendium/unlock/inject/loop
