# Commands for the boomerang hitting a block and bouncing

execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players set #temp_0 myriad.dummy 100
execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players operation #temp_0 myriad.dummy -= @s myriad.dummy2
execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players operation @s myriad.dummy2 = #temp_0 myriad.dummy
execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players reset #temp_0 myriad.dummy
execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players set @s myriad.dummy -1
execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore run tp @s ^ ^ ^ facing ^ ^ ^-1
execute rotated ~ 0 unless block ^ ^ ^0.05 #myriad:boomerang/ignore at @s run playsound myriad:item.boomerang.bounce player @a[distance=..32] ~ ~ ~ 2 1
execute rotated ~ 0 if block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players set #temp_0 myriad.dummy 50
execute rotated ~ 0 if block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players operation #temp_0 myriad.dummy -= @s myriad.dummy2
execute rotated ~ 0 if block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players operation #temp_0 myriad.dummy /= #2 myriad.dummy
execute rotated ~ 0 if block ^ ^ ^0.05 #myriad:boomerang/ignore run scoreboard players operation @s myriad.dummy2 += #temp_0 myriad.dummy
execute rotated ~ 0 if block ^ ^ ^0.05 #myriad:boomerang/ignore run tp @s ^ ^ ^ ~ ~
