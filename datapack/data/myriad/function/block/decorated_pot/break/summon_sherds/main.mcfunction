# Summons the sherds from a pot

data modify storage myriad:temp root.sherds set from entity @s item.components."minecraft:custom_data".item.components."minecraft:custom_data".myriad.sherds
function myriad:block/decorated_pot/break/summon_sherds/spawn_loop