# Spawns the brewing stand marker

execute align xyz unless entity @e[dx=0,type=minecraft:marker,tag=myriad.brewing_stand] run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["myriad.brewing_stand","myriad.marker"]}
