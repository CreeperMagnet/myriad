# Commands to break a snail nest with no silk touch

loot spawn ~ ~ ~ loot myriad:blocks/snail_nest
particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon minecraft:experience_orb ~ ~ ~ {Value:2s}
summon minecraft:experience_orb ~ ~ ~ {Value:1s}
playsound myriad:entity.snail.hurt neutral @a[distance=..16]