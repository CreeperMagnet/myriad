# Main growing phases for gobblerift

scoreboard players add @s myriad.dummy2 1
execute if entity @s[scores={myriad.dummy2=60..}] run function myriad:block/gobblerift/grow/increase_state