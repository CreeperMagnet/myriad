# Main function for checking whether the rest of the functions ought to be run

execute if score @s myriad.dummy matches ..40 run return run function myriad:block/echo_shard_renewability/scan_for_shrieker/bottom/y
execute if score @s myriad.dummy matches 41..60 run return run function myriad:block/echo_shard_renewability/scan_for_shrieker/top/y
execute if entity @n[type=minecraft:warden,distance=..20] run return run tag @s remove myriad.needs_to_spawn_warden
execute if score @s[tag=myriad.needs_to_spawn_warden] myriad.dummy matches 90.. run function myriad:block/echo_shard_renewability/scan_for_shrieker/spawn_warden/y
