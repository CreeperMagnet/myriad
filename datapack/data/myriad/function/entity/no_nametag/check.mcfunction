# Functions to run when a player names an entity that isn't supposed to display a nametag

execute if entity @s[tag=myriad.archaeologist,nbt=!{CustomName:{"translate":"entity.myriad.archaeologist"}}] run team leave @s