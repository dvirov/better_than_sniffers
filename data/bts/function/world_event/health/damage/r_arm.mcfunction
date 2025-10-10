
scoreboard players add @s damage 1

scoreboard players remove @s R.arm 1

scoreboard players remove @s previous.health 1


execute if score @s R.arm matches 0 run attribute @s attack_speed modifier add r_arm -1 add_value
execute if score @s R.arm matches 0 run attribute @s block_break_speed modifier add r_arm -0.15 add_value


