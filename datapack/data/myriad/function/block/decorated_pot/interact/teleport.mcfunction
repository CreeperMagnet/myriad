# Teleports the clicker of the decorated pot out of the barrier bounding box

execute positioned ~0.9375 ~ ~0.0625 if entity @s[dx=0] positioned ~ ~ ~-0.125 if entity @s[dx=0] at @s run tp @s ~0.0625 ~ ~
execute positioned ~-0.9375 ~ ~0.0625 if entity @s[dx=0] positioned ~ ~ ~-0.125 if entity @s[dx=0] at @s run tp @s ~-0.0625 ~ ~
execute positioned ~0.0625 ~ ~0.9375 if entity @s[dx=0] positioned ~-0.125 ~ ~ if entity @s[dx=0] at @s run tp @s ~ ~ ~0.0625
execute positioned ~0.0625 ~ ~-0.9375 if entity @s[dx=0] positioned ~-0.125 ~ ~ if entity @s[dx=0] at @s run tp @s ~ ~ ~-0.0625