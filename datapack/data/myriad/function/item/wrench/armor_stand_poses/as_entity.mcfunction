# Commands to run as the armor stand found

tag @p[advancements={myriad:technical/player_interacted_with_entity/armor_stand_wrench=true}] add myriad.tag
data modify storage myriad:temp root.item set from entity @s equipment.mainhand
item replace entity @s weapon.mainhand from entity @p[advancements={myriad:technical/player_interacted_with_entity/armor_stand_wrench=true}] weapon.mainhand
function myriad:item/wrench/armor_stand_poses/cycle_poses