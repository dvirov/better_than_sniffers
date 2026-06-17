# run from enchantment 

execute if block ~ ~ ~ air unless block ~ ~-1 ~ #bts:not_collecting_rain if biome ~ ~ ~ #bts:rain_biome run function bts:world_event/rain/place

kill @s
