# Advancements to run when players use a wrench on an armor stand

data remove storage myriad:temp root

tag @s remove myriad.tag
scoreboard players set @s myriad.dummy 0
execute store result score @s myriad.dummy run attribute @s minecraft:entity_interaction_range get 100
execute anchored eyes run function myriad:item/wrench/armor_stand_poses/raycast
data modify storage myriad:temp root.item.slot set value "weapon.mainhand"
execute if entity @s[tag=myriad.tag] run function myriad:technical/macros/loot/replace with storage myriad:temp root.item
execute if entity @s[tag=myriad.tag] run function myriad:item/wrench/damage
tag @s remove myriad.tag

advancement revoke @s only myriad:technical/player_interacted_with_entity/armor_stand_wrench