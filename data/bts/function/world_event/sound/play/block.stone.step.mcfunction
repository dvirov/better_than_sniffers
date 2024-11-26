
execute if score @s step.main matches 2.. run return 0
stopsound @s block
execute if score @s step.main matches 1.. run return 0
playsound block.stone.step block @s ~ ~ ~ 50
scoreboard players set @s step.main 10

