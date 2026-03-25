# Commands to run as gobblerift being fed
execute on target run advancement grant @s only myriad:minecraft/end/feed_gobblerift

# Only reproduce if all you have eaten is rabbit stew
execute unless data storage myriad:temp root.item{id:"minecraft:rabbit_stew"} run tag @s remove myriad.gobblerift.can_reproduce

# 120 = 15 * 8 (cooked porkchop) so 15 cooked porkchops to max it out
execute if entity @s[scores={myriad.dummy2=120..999}] run function myriad:block/gobblerift/set_state/digesting
execute if entity @s[tag=myriad.gobblerift.can_reproduce,scores={myriad.dummy2=1000..}] run particle minecraft:heart ~ ~1.2 ~ 0.3 0.4 0.3 1 5 normal
execute if entity @s[scores={myriad.dummy2=1000..}] run function myriad:block/gobblerift/set_state/juice_ready

data remove storage myriad:temp root.macro_input
data modify storage myriad:temp root.macro_input.item set from storage myriad:temp root.item
function myriad:block/gobblerift/interact/feed/particle_macro with storage myriad:temp root.macro_input

execute if entity @s[tag=myriad.silent] run return 0
execute if data storage myriad:temp root.item{id:"minecraft:rabbit_stew"} run return run playsound myriad:block.gobblerift.swallow_favorite block @a[distance=..16]
playsound myriad:block.gobblerift.swallow block @a[distance=..16]