# Commands for cursed crown scheduling

advancement grant @s only myriad:minecraft/adventure/cursed_crown

scoreboard players set @s myriad.cursed_crown_cooldown 0
tag @s add myriad.wearing_cursed_crown
function myriad:item/cursed_crown/absorption/set_maximum

advancement revoke @s only myriad:technical/inventory_changed/cursed_crown/equip