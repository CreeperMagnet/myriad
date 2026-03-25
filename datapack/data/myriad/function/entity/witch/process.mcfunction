# Modifies witches

execute if predicate myriad:location_check/below_0 run return run function myriad:entity/geomancer/spawn
data remove entity @s[nbt={CustomName:{"translate":"entity.myriad.archaeologist"}}] CustomName
tag @s add myriad.modified_vanilla_entity