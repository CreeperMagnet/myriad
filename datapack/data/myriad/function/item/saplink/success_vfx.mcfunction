# Effects to run on success

execute if data storage myriad:temp root.item.components{"minecraft:custom_name":"Sonic Screwdriver"} run return run function myriad:item/saplink/sonic_screwdriver/success_vfx
playsound myriad:item.saplink.used.success player @a[distance=..16] ~ ~ ~