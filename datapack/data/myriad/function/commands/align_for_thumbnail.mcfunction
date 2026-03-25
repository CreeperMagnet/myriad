# Aligns your view to the axis and sets a sign for a proper version thumbnail
tag @s remove myriad.tag
execute anchored eyes if block ^ ^ ^1 pale_oak_wall_sign run tag @s add myriad.tag

execute if entity @s[y_rotation=-135..-45] align xyz run tp @s ~0.5 ~ ~0.5 -90 0
execute if entity @s[y_rotation=-135..-45,tag=!myriad.tag] at @s align xyz anchored eyes run setblock ^ ^ ^1 pale_oak_wall_sign[facing=west]{components:{"minecraft:custom_data":{myriad_thumbnail_sign:1b}},front_text:{"color":"purple","messages":["","Insert text","",""],"has_glowing_text":true}}
execute if entity @s[y_rotation=-45..45] align xyz run tp @s ~0.5 ~ ~0.5 0 0
execute if entity @s[y_rotation=-45..45,tag=!myriad.tag] at @s align xyz anchored eyes run setblock ^ ^ ^1 pale_oak_wall_sign[facing=north]{components:{"minecraft:custom_data":{myriad_thumbnail_sign:1b}},front_text:{"color":"purple","messages":["","Insert text","",""],"has_glowing_text":true}}
execute if entity @s[y_rotation=45..135] align xyz run tp @s ~0.5 ~ ~0.5 90 0
execute if entity @s[y_rotation=45..135,tag=!myriad.tag] at @s align xyz anchored eyes run setblock ^ ^ ^1 pale_oak_wall_sign[facing=east]{components:{"minecraft:custom_data":{myriad_thumbnail_sign:1b}},front_text:{"color":"purple","messages":["","Insert text","",""],"has_glowing_text":true}}
execute if entity @s[y_rotation=135..225] align xyz run tp @s ~0.5 ~ ~0.5 180 0
execute if entity @s[y_rotation=135..225,tag=!myriad.tag] at @s align xyz anchored eyes run setblock ^ ^ ^1 pale_oak_wall_sign[facing=south]{components:{"minecraft:custom_data":{myriad_thumbnail_sign:1b}},front_text:{"color":"purple","messages":["","Insert text","",""],"has_glowing_text":true}}

tag @s remove myriad.tag