# Refreshes health and absorption on respawn

scoreboard players set @s myriad.cursed_crown_cooldown 0
function myriad:item/cursed_crown/absorption/set_maximum
tag @s remove myriad.cursed_crown_respawn