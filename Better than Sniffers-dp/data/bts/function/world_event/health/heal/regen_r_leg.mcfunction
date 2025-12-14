


scoreboard players add @s R.leg 1
scoreboard players add @s previous.health 1

execute if score @s R.leg matches 1.. run attribute @s movement_speed modifier remove r_leg
