# Spawns ice above the player

summon minecraft:falling_block ~0.5 ~3.5 ~0.5 {TileEntityData:{},Time:583,DropItem:0b,BlockState:{Name:"minecraft:frosted_ice",Properties:{age:"3"}},HurtEntities:1b,FallHurtAmount:5.0f,FallHurtMax:10,Tags:["myriad.falling_ice","myriad.newly_spawned_falling_ice"]}
execute as @n[type=minecraft:falling_block,tag=myriad.newly_spawned_falling_ice] run function myriad:entity/iceologer/ice/initiate