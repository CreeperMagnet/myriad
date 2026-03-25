# Sets an armor stand pose

function myriad:item/wrench/armor_stand_poses/set_pose/initiate_tags
tag @s add myriad.posed_armor_stand.point
data modify entity @s Pose set value {Body:[354f,0f,0f],Head:[360f,44f,0f],LeftLeg:[12f,0f,351f],RightLeg:[0f,0f,11f],LeftArm:[12f,34f,0f],RightArm:[262f,59f,0f]}