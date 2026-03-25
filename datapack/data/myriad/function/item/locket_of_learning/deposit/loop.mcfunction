# Recursively deposits xp into the locket

# Increment the number of points extracted, the current number of points in the locket, and take xp
scoreboard players add #temp_0 myriad.dummy 1
scoreboard players add #temp_1 myriad.dummy 1
xp add @s -1 points

# Stop if you've filled up the locket (current level = max)
execute if score #temp_0 myriad.dummy matches 1395 run return 0

# Query XP points
execute store result score @s myriad.dummy run xp query @s points

# Remove the last tiny dreg of xp left so the bar doesn't have anything remaining
execute if entity @s[nbt={XpLevel:0},nbt=!{XpP:0.0f},scores={myriad.dummy=0}] run xp add @s -1 points

# Only continue if the player still has xp and extraction amount is < 31
execute unless entity @s[nbt={XpLevel:0},scores={myriad.dummy=0}] if score #temp_1 myriad.dummy matches ..30 run function myriad:item/locket_of_learning/deposit/loop