
execute if score @s sound.weather.sandstorm matches 5.. run return 0
function bts:world_event/sound/stop/weather
execute if score @s sound.weather.wind matches 1.. run return 0
playsound bts:weather.storm.sandstorm weather @s ~ ~ ~
scoreboard players set @s sound.weather.sandstorm 600

