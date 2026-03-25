# Sets an armor stand pose

function myriad:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add myriad.posed_armor_stand.battle_ready
data modify entity @s Pose set value {LeftArm:[292f,39f,0f],RightArm:[314f,346f,16f]}