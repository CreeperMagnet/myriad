# Runs every second

scoreboard players add @s myriad.dummy2 1

execute if score @s[tag=myriad.baby,tag=!myriad.age_locked] myriad.dummy2 matches 1200.. run return run function myriad:entity/sprouter/grow_up

execute if score @s[tag=!myriad.baby] myriad.dummy2 matches 600.. run function myriad:entity/sprouter/increment_stage/main

execute if entity @s[tag=myriad.breeding_cooldown] run function myriad:entity/sprouter/breed/cooldown_loop

execute if entity @s[tag=myriad.in_love] run function myriad:entity/sprouter/breed/pathfind
