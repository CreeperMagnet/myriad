# Does some checks before replacing the item

# Equipping armor should not cause this to run
execute store result score #temp_0 myriad.dummy run data get storage myriad:temp root.item.Slot
execute if score #temp_0 myriad.dummy matches 100..103 run return 0

function myriad:item/modify_slot/type/replace with storage myriad:temp root.item