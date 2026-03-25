# Commands to run when taking powder from echoing hourglass

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.item set from entity @s item.components."minecraft:custom_data".drop_item

execute if data storage myriad:temp root.macro_input.item{id:"minecraft:sand"} run playsound myriad:block.echoing_hourglass.retrieve_sand block @a[distance=..16]
execute if data storage myriad:temp root.macro_input.item{id:"minecraft:gravel"} run playsound myriad:block.echoing_hourglass.retrieve_gravel block @a[distance=..16]
execute if data storage myriad:temp root.macro_input.item{id:"minecraft:suspicious_sand"} run playsound myriad:block.echoing_hourglass.retrieve_suspicious_sand block @a[distance=..16]
execute if data storage myriad:temp root.macro_input.item{id:"minecraft:suspicious_gravel"} run playsound myriad:block.echoing_hourglass.retrieve_suspicious_gravel block @a[distance=..16]

data remove entity @s item.components."minecraft:custom_data".powder
data remove entity @s item.components."minecraft:custom_data".drop_item
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "empty"
data modify entity @s item.components."minecraft:custom_model_data".floats[0] set value 0.0f

tag @s remove myriad.echoing_hourglass.finished
tag @s add myriad.echoing_hourglass.empty
execute as @p[advancements={myriad:technical/player_interacted_with_entity/echoing_hourglass=true}] run function myriad:block/echoing_hourglass/interact/take_powder/as_player