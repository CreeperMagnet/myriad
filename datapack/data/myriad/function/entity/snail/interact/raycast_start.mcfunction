# Begins the raycast when you interact with the snail

data remove storage myriad:temp root
data modify storage myriad:temp root.item set from entity @s SelectedItem
execute if entity @s[advancements={myriad:technical/player_interacted_with_entity/snail={name=true}}] run data modify storage myriad:temp root.item set value {id:"minecraft:name_tag",components:{"minecraft:custom_name":"Gary"}}

tag @s remove myriad.tag
scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range get 100
execute anchored eyes run function myriad:entity/snail/interact/raycast
execute if entity @s[tag=myriad.tag,gamemode=!creative,advancements={myriad:technical/player_interacted_with_entity/snail={name=false}}] run item modify entity @s weapon.mainhand myriad:reduce_count
item replace entity @s[tag=myriad.tag,gamemode=!creative,advancements={myriad:technical/player_interacted_with_entity/snail={breed=true}}] weapon.mainhand with minecraft:bowl
execute if entity @s[tag=myriad.tag,advancements={myriad:technical/player_interacted_with_entity/snail={bucket=true}}] run function myriad:entity/snail/interact/bucket/as_player
tag @s remove myriad.tag

advancement revoke @s only myriad:technical/player_interacted_with_entity/snail