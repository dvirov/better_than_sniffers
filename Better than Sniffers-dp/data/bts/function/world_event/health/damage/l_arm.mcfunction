
scoreboard players add @s damage 1

scoreboard players remove @s L.arm 1

scoreboard players remove @s previous.health 1



execute if score @s L.arm matches 0 run attribute @s attack_speed modifier add l_arm -1 add_value
execute if score @s L.arm matches 0 run attribute @s block_break_speed modifier add l_arm -0.15 add_value