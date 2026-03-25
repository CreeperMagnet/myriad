# Ticks down the score on the golden dandelion cooldown

scoreboard players remove @s myriad.golden_dandelion_cooldown 1
execute if score @s myriad.golden_dandelion_cooldown matches 0 run scoreboard players reset @s myriad.golden_dandelion_cooldown

execute if entity @s[tag=myriad.snail] if predicate myriad:random_chance/0.5 run return 0
execute if entity @s[tag=myriad.snail,tag=myriad.age_locked] run particle minecraft:pause_mob_growth ~ ~0.5 ~ 0.15 0.15 0.15 0 1 normal
execute if entity @s[tag=myriad.snail,tag=!myriad.age_locked] run particle minecraft:reset_mob_growth ~ ~0.5 ~ 0.15 0.15 0.15 0 1 normal
execute if entity @s[tag=myriad.sprouter,tag=myriad.age_locked] run particle minecraft:pause_mob_growth ~ ~1 ~ 0.25 0.3 0.25 0 1 normal
execute if entity @s[tag=myriad.sprouter,tag=!myriad.age_locked] run particle minecraft:reset_mob_growth ~ ~1 ~ 0.25 0.3 0.25 0 1 normal