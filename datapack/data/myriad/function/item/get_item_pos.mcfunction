# Gets the container number for the item's position

execute store result score #temp_0 myriad.dummy run data get storage myriad:temp root.item.Slot
scoreboard players operation #temp_1 myriad.dummy = #temp_0 myriad.dummy
execute if score #temp_1 myriad.dummy matches 9..35 run scoreboard players remove #temp_1 myriad.dummy 9
execute store result storage myriad:temp root.macro_input.container_slot int 1 run scoreboard players get #temp_1 myriad.dummy
