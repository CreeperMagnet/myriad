# Take juice from gobblerift but for survival mode

execute on target run item modify entity @s weapon.mainhand myriad:reduce_count
function myriad:block/gobblerift/interact/juice/main
function myriad:block/gobblerift/set_state/hungry