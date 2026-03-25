# Ticking for archaeologist

item replace entity @s weapon.mainhand with minecraft:stone[minecraft:item_model="myriad:entity/archaeologist/body",minecraft:custom_model_data={flags:[false]}]

execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run return run function myriad:entity/archaeologist/level_up/main
execute unless data entity @s[nbt={Xp:0}] Brain.memories."minecraft:job_site".value run return run function myriad:entity/archaeologist/reset

execute if entity @s[nbt=!{HurtTime:0s}] run return run function myriad:entity/archaeologist/hurt
item replace entity @s armor.head with minecraft:stone[minecraft:item_model="myriad:entity/archaeologist/head",minecraft:custom_model_data={flags:[false]}]