# Commands to run off a snail nest every ten seconds

scoreboard players add @s[predicate=myriad:random_chance/0.5] myriad.dummy2 1
execute if entity @s[scores={myriad.dummy2=45..}] align xyz positioned ~0.5 ~-1 ~0.5 run function myriad:block/snail_nest/hatch
