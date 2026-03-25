# Resets the archaeologist

tag @s remove myriad.archaeologist
tag @s remove smithed.entity

team leave @s
data remove entity @s equipment.mainhand
data remove entity @s equipment.offhand
data remove entity @s drop_chances
item replace entity @s armor.head with minecraft:air
item replace entity @s weapon.mainhand with minecraft:air
data remove entity @s[nbt={CustomName:{"translate":"entity.myriad.archaeologist"}}] CustomName