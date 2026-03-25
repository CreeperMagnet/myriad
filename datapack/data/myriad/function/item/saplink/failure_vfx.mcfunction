# Effects to run on failure

execute if data storage myriad:temp root.item.components{"minecraft:custom_name":"Sonic Screwdriver"} run return run function myriad:item/saplink/sonic_screwdriver/failure_vfx
playsound myriad:item.saplink.used.failure player @a[distance=..16] ~ ~ ~