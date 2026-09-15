# Commands to give a player named riftjuice

scoreboard players set @s myriad.dummy 0
execute unless items entity @s weapon.mainhand * run return run loot replace entity @s weapon.mainhand loot myriad:technical/riftjuice_bottle/named

execute store result score @s myriad.dummy run loot give @s loot myriad:technical/riftjuice_bottle/named
execute if score @s myriad.dummy matches 0 run loot spawn ~ ~ ~ loot myriad:technical/riftjuice_bottle/named