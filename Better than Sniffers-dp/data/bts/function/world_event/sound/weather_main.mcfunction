
execute unless predicate bts:is_raining run function bts:world_event/sound/play/weather/weather.clear
execute if predicate bts:world_event/sounds/weather.storm.rain run function bts:world_event/sound/play/weather/weather.storm.rain
execute if predicate bts:world_event/sounds/weather.storm.wind run function bts:world_event/sound/play/weather/weather.storm.wind
execute if predicate bts:world_event/sounds/weather.storm.sandstorm run function bts:world_event/sound/play/weather/weather.storm.sandstorm

