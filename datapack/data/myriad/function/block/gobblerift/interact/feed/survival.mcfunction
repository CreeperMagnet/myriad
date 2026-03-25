# Commands to run as gobblerift being fed (by a survival mode player)

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.value set from storage myriad:temp root.meat_value
function myriad:block/gobblerift/interact/feed/set_score_macro with storage myriad:temp root.macro_input

function myriad:block/gobblerift/interact/feed/main
execute on target if items entity @s weapon.mainhand minecraft:rabbit_stew run return run item replace entity @s weapon.mainhand with bowl
execute on target run item modify entity @s weapon.mainhand myriad:reduce_count