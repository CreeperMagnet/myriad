# Increments the flowering stage of the dino

scoreboard players reset @s myriad.dummy2

execute if entity @s[tag=myriad.sprouter.stage_0] run return run function myriad:entity/sprouter/increment_stage/stage_1
execute if entity @s[tag=myriad.sprouter.stage_1] run return run function myriad:entity/sprouter/increment_stage/stage_2
execute if entity @s[tag=myriad.sprouter.stage_2] run return run function myriad:entity/sprouter/increment_stage/stage_3