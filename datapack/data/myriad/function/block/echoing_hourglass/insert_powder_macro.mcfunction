# Common actions that need to be done to fill an echoing hourglass (for both hoppers and manual insertion ( ͡° ͜ʖ ͡°))

$playsound minecraft:block.$(powder).place player @a[distance=..16]
tag @s remove myriad.echoing_hourglass.empty
$data modify entity @s item.components."minecraft:custom_data".powder set value {id:"$(powder)",result:{id:"minecraft:suspicious_$(powder)",count:1}}

# Base display entity: Glass portion
$data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value $(powder)
$execute on passengers if entity @s[type=minecraft:item_display] run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value $(powder)

scoreboard players set @s myriad.dummy2 40
data modify storage myriad:temp root.item.count set value 1
data modify entity @s item.components."minecraft:custom_data".drop_item set from storage myriad:temp root.item