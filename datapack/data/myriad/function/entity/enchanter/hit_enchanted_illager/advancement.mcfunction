# Plays a noise and does effects when you hit an enchanted mob

execute as @n[type=#myriad:enchanter_affected,predicate=myriad:entity_properties/is_affected_by_enchanter,nbt={HurtTime:10s}] at @s run function myriad:entity/enchanter/hit_enchanted_illager/as_illager

advancement revoke @s only myriad:technical/player_hurt_entity/enchanted_illager