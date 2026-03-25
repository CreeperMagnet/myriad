# Moves the boomerang one block

scoreboard players set @s myriad.dummy 0
function myriad:item/boomerang/iterate
scoreboard players add @s myriad.dummy2 1
function myriad:item/boomerang/tick_update
