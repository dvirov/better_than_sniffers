
scoreboard players add @s damage 1

scoreboard players remove @s R.leg 1

scoreboard players remove @s previous.health 1


execute if score @s R.leg matches 0 run attribute @s movement_speed modifier add r_leg -0.03 add_value