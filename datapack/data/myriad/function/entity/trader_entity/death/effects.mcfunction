# Where were you when trader entity was kil?

particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
summon minecraft:experience_orb ~ ~ ~ {Value:2s}
summon minecraft:experience_orb ~ ~ ~ {Value:1s}
function myriad:entity/trader_entity/sounds/death
kill @s
