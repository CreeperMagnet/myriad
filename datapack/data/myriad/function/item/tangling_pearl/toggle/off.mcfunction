# Changes the enabled status

data modify storage myriad:temp root.item.components."minecraft:custom_model_data".flags[0] set value false
data modify storage myriad:temp root.item.components."minecraft:custom_data".myriad.enabled set value 0b
playsound myriad:item.tangling_pearl.deactivate player @a[distance=..16]