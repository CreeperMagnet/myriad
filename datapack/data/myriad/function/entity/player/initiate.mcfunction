# Initiates things for the player

##### DO NOT MOVE THE POSITION OF THE BELOW TWO LINES. THEY ARE EDITED BEFORE EXPORT.
tellraw @s {"click_event":{"action":"open_url","url":"https://github.com/CreeperMagnet/myriad/"},"fallback": "\nWARNING\n\nThe Myriad required resource pack is not installed. Click here to download it. Gameplay will break if not used.\n\nWARNING","translate":"myriad.resource_pack_validation.check_installed","color":"red","bold":true,"with":[{"translate":"myriad.resource_pack_validation.check_version.dev_version_do_not_distribute","fallback":"\nWARNING\n\nYou have the wrong version of the Myriad resource pack installed. Click here to download the correct one. Gameplay will break if not used.\n\nWARNING","with":[{"translate":"commands.myriad.initiate","color":"white","underlined":false,"bold":false,"click_event":{"action":"suggest_command","command":""},"with":[{"translate":"pack.myriad","color":"#800090","underlined":true,"hover_event":{"action":"show_text","value":{"translate":"pack.myriad.hover_event"}},"click_event":{"action":"open_url","url":"https://thecreeperscode.com"}}]}]}]}
# Beta disclaimer is inserted here, if beta

# Scoreboard objectives
scoreboard players reset @s myriad.dummy2
scoreboard players reset @s myriad.dummy
scoreboard players enable @s myriad.emoji
scoreboard players set @s myriad.emoji 0