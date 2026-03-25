# Sets an armor stand pose

function myriad:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add myriad.posed_armor_stand.yay
data modify entity @s Pose set value {LeftArm:[181f,0f,30f],RightArm:[181f,0f,330f]}