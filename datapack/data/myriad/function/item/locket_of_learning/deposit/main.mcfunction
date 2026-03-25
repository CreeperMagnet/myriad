# Stores experience into the locket

playsound myriad:item.locket_of_learning.deposit player @a[distance=..16]
advancement grant @s only myriad:minecraft/adventure/obtain_locket_of_learning

# Run loop for depositing using amount of stored points
scoreboard players set #temp_1 myriad.dummy 0
function myriad:item/locket_of_learning/deposit/loop

# Modifying item macro
function myriad:item/locket_of_learning/modify_item with storage myriad:temp root.item