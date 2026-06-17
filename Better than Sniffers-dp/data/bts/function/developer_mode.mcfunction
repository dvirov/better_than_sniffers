scoreboard players add .developer pack.settings 0

 
execute if score .developer pack.settings matches 0 run tellraw @a {color:dark_red ,text:"developer mode enabled please reload"}
execute if score .developer pack.settings matches 1 run tellraw @a {color:dark_red ,text:"developer mode disabled please reload"}

execute if score .developer pack.settings matches 1 run return run scoreboard players set .developer pack.settings 0
execute if score .developer pack.settings matches 0 run return run scoreboard players set .developer pack.settings 1

