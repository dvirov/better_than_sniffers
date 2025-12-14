
execute if score @s sound.weather.rain matches 5.. run return fail
function bts:world_event/sound/stop/weather
execute if score @s sound.weather.rain matches 1.. run return fail
execute store result score rng values run random value 1..2

execute if score rng values matches 1 run playsound bts:weather.storm.rain1 weather @s ~ ~ ~
execute if score rng values matches 1 run scoreboard players set @s sound.weather.rain 6080

execute if score rng values matches 2 run playsound bts:weather.storm.rain2 weather @s ~ ~ ~
execute if score rng values matches 2 run scoreboard players set @s sound.weather.rain 10800

