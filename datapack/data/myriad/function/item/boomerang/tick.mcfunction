# Commands to run for the boomerang tickly

execute if entity @s[scores={myriad.dummy2=50..}] run function myriad:item/boomerang/track_player/main with entity @s item.components."minecraft:custom_data".myriad.macro_input
execute unless entity @s[scores={myriad.dummy2=121..}] run function myriad:item/boomerang/move
execute if entity @s[scores={myriad.dummy2=121..}] run function myriad:item/boomerang/pop_into_item with storage myriad:temp root.boomerang.macro_input
