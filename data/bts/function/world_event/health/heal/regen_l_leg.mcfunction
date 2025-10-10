


scoreboard players add @s L.leg 1
scoreboard players add @s previous.health 1

execute if score @s L.leg matches 1.. run attribute @s movement_speed modifier remove l_leg

