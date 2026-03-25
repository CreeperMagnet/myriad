# Modifies the storage for a specific potion type

function myriad:block/brewing_stand/brewing/dilute_potion/set_generic_tags {color:16762624,translation:"strength",lore_color:"blue",effect:"strength",duration:18,duration_lore_0:1,duration_lore_1:8,amplifier:0}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"text":""}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"dark_purple","italic":false,"translate":"potion.whenDrank"}
data modify storage myriad:temp root.item.components."minecraft:lore" append value {"color":"blue","italic":false,"translate":"attribute.modifier.plus.0","with":["3",{"translate":"attribute.name.attack_damage"}]}