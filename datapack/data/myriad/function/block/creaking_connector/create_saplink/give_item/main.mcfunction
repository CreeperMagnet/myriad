# Gives the player a saplink with the proper data

advancement grant @s only myriad:minecraft/adventure/create_saplink

$execute if data storage myriad:temp root.name run return run function myriad:block/creaking_connector/create_saplink/give_item/named {sapling_id:"$(sapling_id)"}
# Run if above doesn't return
$function myriad:block/creaking_connector/create_saplink/give_item/unnamed {sapling_id:"$(sapling_id)"}