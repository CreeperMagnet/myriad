# Updates your cursed crown health when you lose the health boost effect

advancement revoke @s only myriad:technical/effects_changed/lose_health_boost_with_cursed_crown
tag @s remove myriad.cursed_crown.health_boost
execute if score @s myriad.cursed_crown_cooldown matches 1.. run return run function myriad:item/cursed_crown/health_boost/lose_during_cooldown
function myriad:item/cursed_crown/absorption/set_maximum
