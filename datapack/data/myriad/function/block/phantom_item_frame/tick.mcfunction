# Runs tickly for phantom item frames

# If the item frame no longer exists (has been broken in some way), run break functionality
execute unless predicate myriad:entity_properties/in_vehicle run function myriad:block/phantom_item_frame/break/main

# Make the "empty" phantom item frame re-appear if there is no item in the item frame
execute on vehicle unless data entity @s[tag=myriad.phantom_item_frame.has_item] Item on passengers run function myriad:block/phantom_item_frame/remove_item
