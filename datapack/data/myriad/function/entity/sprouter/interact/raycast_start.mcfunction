# Begins the raycast when you interact with the sprouter

data remove storage myriad:temp root
data modify storage myriad:temp root.item set from entity @s SelectedItem

tag @s remove myriad.tag
scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range get 100
execute anchored eyes run function myriad:entity/sprouter/interact/raycast
item modify entity @s[tag=myriad.tag,gamemode=!creative,advancements={myriad:technical/player_interacted_with_entity/sprouter={shear=false}}] weapon.mainhand myriad:reduce_count
execute if entity @s[tag=myriad.tag,gamemode=!creative,advancements={myriad:technical/player_interacted_with_entity/sprouter={shear=true}}] run function myriad:technical/macros/damage_slot/main {slot:"weapon.mainhand",slot_raw:"SelectedItem",amount:"1"}
tag @s remove myriad.tag

advancement revoke @s only myriad:technical/player_interacted_with_entity/sprouter