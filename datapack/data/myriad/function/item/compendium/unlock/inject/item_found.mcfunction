# Commands to run for each compendium in the inventory

# If the book already has the specified entry unlocked, return
$execute if data storage myriad:temp root.item.components."minecraft:custom_data".myriad{unlocked_entries:["$(entry_name)"]} run return 0

# Copy the page injections to a different path just because
execute if entity @s[tag=!myriad.success] run data modify storage myriad:temp root.page_injections set from storage myriad:temp root.start_injection.list
# Reset the temporary combined offset score,
# which tracks how much of an offset all injections on one page create combined
scoreboard players set #temp_combined_offset myriad.dummy 0
# Loop through the injections
execute if entity @s[tag=!myriad.success] run function myriad:item/compendium/unlock/inject/loop

execute if entity @s[tag=myriad.invalid_page] run return 0

# Update the unlocked entries list
execute if entity @s[tag=!myriad.success] run data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.unlocked_entries append from storage myriad:temp root.start_injection.entry_name
execute if entity @s[tag=!myriad.success] store result storage myriad:temp root.compendium.latest_entry_count int 1 run data get storage myriad:temp root.item.components."minecraft:custom_data".myriad.unlocked_entries
execute if entity @s[tag=!myriad.success] run function myriad:item/compendium/data/set/main

# If this is the first compendium in the loop, copy its data so subsequent compendiums can be modified quickly
execute if entity @s[tag=!myriad.success] run data modify storage myriad:temp root.compendium_tag.unlocked_entries set from storage myriad:temp root.item.components."minecraft:custom_data".myriad.unlocked_entries
execute if entity @s[tag=!myriad.success] run data modify storage myriad:temp root.compendium_tag.pages set from storage myriad:temp root.item.components."minecraft:written_book_content".pages

# Modify subsequent compendiums from the data of the first compendium in the loop
execute if entity @s[tag=myriad.success] run data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.unlocked_entries set from storage myriad:temp root.compendium_tag.unlocked_entries
execute if entity @s[tag=myriad.success] run data modify storage myriad:temp root.item.components."minecraft:written_book_content".pages set from storage myriad:temp root.compendium_tag.pages

# Add a tag to mark that all following items should copy the first item's data
tag @s add myriad.success

# Apply changes
execute if entity @s[tag=!myriad.tag] run function myriad:item/compendium/unlock/inject/modify_item/main
