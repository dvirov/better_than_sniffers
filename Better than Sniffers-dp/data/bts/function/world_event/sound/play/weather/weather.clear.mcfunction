
#execute if score @s sound.weather.e matches 5.. run return fail
function bts:world_event/sound/stop/weather
#execute if score @s sound.weather.rain matches 1.. run return fail
#playsound bts:weather.storm.empty weather @s ~ ~ ~
#scoreboard players set @s sound.weather.empty 5

