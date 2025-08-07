
execute if score @s weather.rain matches 5.. run return 0
function bts:world_event/sound/stop/weather
execute if score @s weather.rain matches 1.. run return 0
playsound bts:weather.storm.rain weather @s ~ ~ ~
scoreboard players set @s weather.rain 6080

