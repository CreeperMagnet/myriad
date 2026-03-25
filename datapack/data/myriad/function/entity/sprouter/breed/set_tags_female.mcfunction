# Sets the data of the sprouter that laid the egg

function myriad:entity/sprouter/breed/set_tags
loot spawn ~ ~ ~ loot myriad:items/sprouter_egg
summon minecraft:experience_orb ~ ~ ~ {Value:5s}
data remove storage myriad:temp root
playsound myriad:entity.sprouter.lay_egg neutral @a[distance=..16]
