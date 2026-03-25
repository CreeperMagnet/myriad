# Ten-second-clocks a living entity with a wandering trader base

effect give @s minecraft:invisibility infinite 0 true
# This fixes an incredibly specific bug: https://github.com/CreeperMagnet/the-creepers-code/issues/43
item modify entity @s weapon.mainhand {"function":"set_custom_data","tag":{fix:"idk why this works but it does"}}

# Set death time stuff
data modify entity @s DeathTime set value 19s

# Wandering Witch-specific stuff
execute if entity @s[tag=myriad.wandering_witch] run return run function myriad:entity/wandering_witch/ten_second_clock

# If not a wandering witch, do the following
data modify entity @s DespawnDelay set value 2147483647
data remove entity @s Offers.Recipes