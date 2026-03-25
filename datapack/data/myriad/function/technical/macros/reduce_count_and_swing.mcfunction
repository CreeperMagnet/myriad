# Reduces the count of the given slot and swings the player's hand

$item modify entity @s[gamemode=!creative] weapon.$(slot) myriad:reduce_count
$swing @s $(slot)
