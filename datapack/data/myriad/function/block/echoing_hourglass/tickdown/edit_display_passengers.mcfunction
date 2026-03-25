# Edits display passengers to set proper numbers

# Find inverse for top portion
scoreboard players set #temp_0 myriad.dummy 40
scoreboard players operation #temp_0 myriad.dummy -= @s myriad.dummy2

# Set scales based on score
execute on passengers if entity @s[type=minecraft:item_display] run data modify entity @s start_interpolation set value 0
execute store result storage myriad:temp root.scale float 0.025 run scoreboard players get @s myriad.dummy2
execute on passengers if entity @s[tag=myriad.echoing_hourglass.powder_top] run data modify entity @s transformation.scale[1] set from storage myriad:temp root.scale
execute store result storage myriad:temp root.scale float 0.025 run scoreboard players get #temp_0 myriad.dummy
execute on passengers if entity @s[tag=myriad.echoing_hourglass.powder_bottom] run data modify entity @s transformation.scale[1] set from storage myriad:temp root.scale