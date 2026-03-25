# Bone meal for gobblerift but for survival mode

scoreboard players add @s myriad.dummy2 30
execute on target run item modify entity @s weapon.mainhand myriad:reduce_count
function myriad:block/gobblerift/interact/bone_meal/main
function myriad:block/gobblerift/grow/main