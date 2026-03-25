# Commands to run as items for teleportation

execute as @p unless entity @s[tag=myriad.has_enabled_tangling_pearl] run return 0
particle minecraft:dust{color:[0.067,0.608,0.522],scale:0.4} ~ ~ ~ 0.05 0.05 0.05 200 20
data modify entity @s PickupDelay set value 0s
tp @s @p[tag=myriad.has_enabled_tangling_pearl]
tag @s add myriad.tangling_pearl_item.teleported