# Functions to run off every player every single tick

## Non-Spectator Stuff
execute if entity @s[gamemode=!spectator] run function myriad:entity/player/tick/non_spectators

# Emoji
execute if score @s myriad.emoji matches -2147483648..2147483647 unless score @s myriad.emoji matches 0 if entity @s[tag=!myriad.emoji_mute] run function myriad:entity/player/emoji
