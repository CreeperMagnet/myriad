# Kills the boomerang once it's been picked up

execute if entity @s[tag=myriad.boomerang.on_fire] on passengers run kill @s
kill @s
scoreboard players set @s myriad.dummy -1
