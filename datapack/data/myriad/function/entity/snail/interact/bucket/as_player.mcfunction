# Replaces items for bucketing snails properly

scoreboard players set @s myriad.dummy 0
$execute unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":"myriad:items/snail_bucket","modifier":{"type":"minecraft:set_components","components":$(components)}}]}]}

$execute store result score @s myriad.dummy run loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":"myriad:items/snail_bucket","modifier":{"type":"minecraft:set_components","components":$(components)}}]}]}

$execute if score @s myriad.dummy matches 0 run loot spawn ~ ~ ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":"myriad:items/snail_bucket","modifier":{"type":"minecraft:set_components","components":$(components)}}]}]}