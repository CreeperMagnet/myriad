# Macro that selects all item entities with a specific Thrower UUID & death id

$execute as @e[type=minecraft:item,distance=..30,tag=myriad.death_item,nbt={Thrower:$(UUID)},scores={myriad.deaths=$(score)}] run function myriad:item/recovery_compass/glow
