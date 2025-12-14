## run as player tick
execute if score @s settings.custom_sounds matches 0 run return fail

function bts:world_event/sound/play
execute if score @s sound.weather.rain matches 1.. run scoreboard players remove @s sound.weather.rain 1
execute if score @s sound.weather.wind matches 1.. run scoreboard players remove @s sound.weather.wind 1
execute if score @s sound.weather.sandstorm matches 1.. run scoreboard players remove @s sound.weather.sandstorm 1



#execute if score @s sound.ambiant.time matches 1.. run scoreboard players remove @s sound.ambiant.time 1
execute if score @s sound.step.main matches 1.. run scoreboard players remove @s sound.step.main 1

