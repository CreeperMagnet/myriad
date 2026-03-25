# Checks if the version needs to be updated

execute store result score #temp_ver myriad.dummy run data get storage myriad:compendium version.release
execute store result score #temp_item_ver myriad.dummy run data get storage myriad:temp root.item.components."minecraft:custom_data".myriad.version.release

execute unless score #temp_ver myriad.dummy = #temp_item_ver myriad.dummy run scoreboard players set #temp_0 myriad.dummy 1
execute unless score #temp_ver myriad.dummy = #temp_item_ver myriad.dummy run return 1


execute store result score #temp_ver myriad.dummy run data get storage myriad:compendium version.dev
execute store result score #temp_item_ver myriad.dummy run data get storage myriad:temp root.item.components."minecraft:custom_data".myriad.version.dev

execute unless score #temp_ver myriad.dummy = #temp_item_ver myriad.dummy run scoreboard players set #temp_0 myriad.dummy 1
