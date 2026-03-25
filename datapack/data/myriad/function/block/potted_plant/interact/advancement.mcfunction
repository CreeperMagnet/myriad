# Run Functions
execute as @n[type=minecraft:interaction,tag=myriad.potted_plant,nbt={interaction:{}}] at @s run function myriad:block/potted_plant/interact/as_entity

# Revoke Advancement
advancement revoke @s only myriad:technical/player_interacted_with_entity/potted_plant
