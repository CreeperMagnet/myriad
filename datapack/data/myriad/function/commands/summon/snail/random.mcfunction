# Summons a snail
data remove storage myriad:temp root
function myriad:entity/snail/summon/spawn

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.myriad.snail"}]}
