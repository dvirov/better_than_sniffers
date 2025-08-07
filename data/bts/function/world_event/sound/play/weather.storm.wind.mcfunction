
execute if score @s weather.wind matches 5.. run return 0
stopsound @s weather
function bts:world_event/sound/stop/weather
execute if score @s weather.wind matches 1.. run return 0
playsound bts:weather.storm.wind weather @s ~ ~ ~
scoreboard players set @s weather.wind 6720

