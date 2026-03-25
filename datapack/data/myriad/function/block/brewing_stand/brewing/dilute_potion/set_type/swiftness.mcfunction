# Modifies the storage for a specific potion type

function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:3402751,translation:"swiftness",lore_color:"blue",effect:"speed",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"blue","italic":false,"translate":"attribute.modifier.plus.1","with":["20",{"translate":"attribute.name.movement_speed"}]}