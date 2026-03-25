# Spawns invalids in item form

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.item set from storage myriad:temp root.export_items[0]
execute as @p[tag=myriad.inside_pottery_table_gui,gamemode=!spectator] at @s run function myriad:technical/macros/spawn_item with storage myriad:temp root.macro_input
execute unless entity @a[tag=myriad.inside_pottery_table_gui,gamemode=!spectator] positioned ~ ~1 ~ run function myriad:technical/macros/spawn_item with storage myriad:temp root.macro_input
data remove storage myriad:temp root.export_items[0]
execute if data storage myriad:temp root.export_items[0] run function myriad:block/pottery_table/crafting/manage_invalids/spawn_loop
