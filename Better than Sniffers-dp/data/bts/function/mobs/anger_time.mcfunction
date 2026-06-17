scoreboard players remove @s timer 1

execute if score @s timer matches ..0 run tag @s remove hurt_animal 
execute if score @s timer matches ..0 run attribute @s follow_range base set 0