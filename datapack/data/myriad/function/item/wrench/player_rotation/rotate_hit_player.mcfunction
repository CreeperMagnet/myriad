# Rotates the player if they're hit by a wrench

rotate @s ~180 ~
playsound myriad:item.wrench.rotate_player block @a[distance=..16]
advancement revoke @s only myriad:technical/entity_hurt_player/entity_holding_wrench