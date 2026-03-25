# Sets a BIZARRE armor stand pose

function myriad:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add myriad.posed_armor_stand.bizarre
data modify entity @s Pose set value {LeftLeg:[0f,0f,350f],RightLeg:[0f,0f,10f],LeftArm:[244f,42f,0f],RightArm:[19f,0f,29f]}