


scoreboard players add @s L.arm 1
scoreboard players add @s previous.health 1


execute if score @s L.arm matches 1.. run attribute @s attack_speed modifier remove l_arm
execute if score @s L.arm matches 1.. run attribute @s block_break_speed modifier remove l_arm