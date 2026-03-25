# Makes animations and such for a spell-casting cycle

scoreboard players add @s[scores={myriad.dummy2=0..}] myriad.dummy2 1
execute if entity @s[scores={myriad.dummy2=3..}] run function myriad:entity/enchanter/spell_finish
execute rotated ~ 0 run particle minecraft:enchant ^0.75 ^2 ^ 0.1 0.1 0.1 0 5 force
execute rotated ~ 0 run particle minecraft:enchant ^-0.75 ^2 ^ 0.1 0.1 0.1 0 5 force