# Modifies the storage for a specific potion type

function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:9154528,translation:"slowness",lore_color:"red",effect:"slowness",duration:24,duration_lore_0:2,duration_lore_1:4,amplifier:0}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"red","italic":false,"translate":"attribute.modifier.take.1","with":["15",{"translate":"attribute.name.movement_speed"}]}