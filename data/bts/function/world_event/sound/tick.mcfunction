## run as player tick
function bts:world_event/sound/play
execute if score @s weather.rain matches 1.. run scoreboard players remove @s weather.rain 1
execute if score @s weather.wind matches 1.. run scoreboard players remove @s weather.wind 1
execute if score @s ambiant.time matches 1.. run scoreboard players remove @s ambiant.time 1
execute if score @s step.main matches 1.. run scoreboard players remove @s step.main 1

