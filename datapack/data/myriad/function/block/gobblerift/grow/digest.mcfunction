# Main digesting phases for gobblerift

# 90 = 15 minutes (900 seconds, 10 seconds x 90)
execute if entity @s[scores={myriad.dummy2=90..}] run function myriad:block/gobblerift/set_state/juice_ready
scoreboard players add @s myriad.dummy2 1