# Cycles the poses of an armor stand

playsound myriad:item.wrench.pose_armor_stand player @a[distance=..16]
execute if entity @s[tag=!myriad.posed_armor_stand] run return run function myriad:item/wrench/armor_stand_poses/set_pose/assert_dominance
execute if entity @s[tag=myriad.posed_armor_stand.assert_dominance] run return run function myriad:item/wrench/armor_stand_poses/set_pose/battle_ready
execute if entity @s[tag=myriad.posed_armor_stand.battle_ready] run return run function myriad:item/wrench/armor_stand_poses/set_pose/bizarre
execute if entity @s[tag=myriad.posed_armor_stand.bizarre] run return run function myriad:item/wrench/armor_stand_poses/set_pose/despair
execute if entity @s[tag=myriad.posed_armor_stand.despair] run return run function myriad:item/wrench/armor_stand_poses/set_pose/outstretched
execute if entity @s[tag=myriad.posed_armor_stand.outstretched] run return run function myriad:item/wrench/armor_stand_poses/set_pose/point
execute if entity @s[tag=myriad.posed_armor_stand.point] run return run function myriad:item/wrench/armor_stand_poses/set_pose/praise
execute if entity @s[tag=myriad.posed_armor_stand.praise] run return run function myriad:item/wrench/armor_stand_poses/set_pose/running
execute if entity @s[tag=myriad.posed_armor_stand.running] run return run function myriad:item/wrench/armor_stand_poses/set_pose/shooting
execute if entity @s[tag=myriad.posed_armor_stand.shooting] run return run function myriad:item/wrench/armor_stand_poses/set_pose/throwing
execute if entity @s[tag=myriad.posed_armor_stand.throwing] run return run function myriad:item/wrench/armor_stand_poses/set_pose/yay
execute if entity @s[tag=myriad.posed_armor_stand.yay] run return run function myriad:item/wrench/armor_stand_poses/set_pose/none
