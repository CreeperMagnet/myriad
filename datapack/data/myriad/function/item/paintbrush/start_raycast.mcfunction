# Begins paintbrush raycast

data remove storage myriad:temp root

execute if items entity @s weapon.offhand #myriad:dyes run data modify storage myriad:temp root.item.id set from entity @s equipment.offhand.id
execute if items entity @s weapon.mainhand #myriad:dyes run data modify storage myriad:temp root.item.id set from entity @s SelectedItem.id

tag @s add myriad.paintbrush.raycaster

scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function myriad:item/paintbrush/raycast

tag @s remove myriad.paintbrush.raycaster