# Modifies the storage for a specific potion type

function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:5882118,translation:"luck",lore_color:"blue",effect:"luck",duration:30,duration_lore_0:3,duration_lore_1:0,amplifier:0}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["1",{"translate":"attribute.name.luck"}]}