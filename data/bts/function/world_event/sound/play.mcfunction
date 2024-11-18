## run as player tick
execute if predicate bts:is_night if predicate bts:noroof run function bts:world_event/sound/play/night.nature
execute unless predicate bts:is_night run function bts:world_event/sound/stop/ambient.time

execute if predicate bts:is_raining unless biome ~ ~ ~ #bts:cold_biome run function bts:world_event/sound/play/weather.storm.rain
execute if predicate bts:is_raining if biome ~ ~ ~ #bts:cold_biome run function bts:world_event/sound/play/weather.storm.wind
execute unless predicate bts:is_raining run function bts:world_event/sound/stop/weather





