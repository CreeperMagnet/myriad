# Activates the soul seer

tag @s add myriad.soul_seer.selected
execute unless entity @s[scores={myriad.dummy2=1..}] run function myriad:block/soul_seer/glow
tag @s remove myriad.soul_seer.selected
scoreboard players set @s myriad.soul_seer_cooldown 6