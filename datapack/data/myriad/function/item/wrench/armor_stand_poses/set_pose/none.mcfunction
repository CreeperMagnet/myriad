# Sets an armor stand pose

function myriad:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s remove myriad.posed_armor_stand
data modify entity @s Pose set value {}