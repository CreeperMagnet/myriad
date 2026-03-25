# Boomerang tracking algorithm

# Face towards the player that matches the proper UUID requirements
$execute facing entity @p[distance=..55,gamemode=!spectator,nbt=!{Health:0f},nbt={UUID:$(UUID)}] eyes run function myriad:item/boomerang/track_player/teleport

# Exception for if there is no player
$execute if entity @s[tag=!myriad.boomerang.turned] unless entity @p[distance=..55,gamemode=!spectator,nbt=!{Health:0f},nbt={UUID:$(UUID)}] run function myriad:item/boomerang/track_player/no_player