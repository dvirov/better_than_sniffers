
execute if score @s sound.step.main matches 2.. run return 0
stopsound @s block
execute if score @s sound.step.main matches 1.. run return 0
playsound block.stone.step block @s ~ ~ ~
scoreboard players set @s sound.step.main 10

