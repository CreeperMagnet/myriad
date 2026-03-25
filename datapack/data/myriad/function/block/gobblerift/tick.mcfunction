# Commands to run every tick for gobblerifts

execute unless predicate myriad:location_check/gobblerift_valid run function myriad:block/gobblerift/break/main
execute if entity @s[scores={myriad.dummy2=1..}] run function myriad:block/gobblerift/attack/tickdown