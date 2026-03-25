# Sets an armor stand pose

function myriad:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add myriad.posed_armor_stand.throwing
data modify entity @s Pose set value {RightArm:[179f,180f,330f]}