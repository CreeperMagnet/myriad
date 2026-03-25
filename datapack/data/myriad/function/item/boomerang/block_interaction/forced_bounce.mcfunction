# Commands for the boomerang hitting a solid interactable block and bouncing due to gamerule

execute if score @s myriad.dummy2 matches 50.. run return run function myriad:item/boomerang/pop_into_item with storage myriad:temp root.boomerang.macro_input
execute rotated ~ 0 run scoreboard players set #temp_0 myriad.dummy 100
execute rotated ~ 0 run scoreboard players operation #temp_0 myriad.dummy -= @s myriad.dummy2
execute rotated ~ 0 run scoreboard players operation @s myriad.dummy2 = #temp_0 myriad.dummy
execute rotated ~ 0 run scoreboard players reset #temp_0 myriad.dummy
execute rotated ~ 0 run scoreboard players set @s myriad.dummy -1
execute rotated ~ 0 run tp @s ^ ^ ^ facing ^ ^ ^-1
execute rotated ~ 0 at @s run playsound myriad:item.boomerang.bounce player @a[distance=..32] ~ ~ ~ 2 1