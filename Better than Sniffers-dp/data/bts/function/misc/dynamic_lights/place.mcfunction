function bts:misc/dynamic_lights/torch

execute if block ~ ~ ~ #bts:light_air run fill ~ ~ ~ ~ ~2 ~ light[level=15] keep

fill ~ ~2 ~1 ~ ~ ~-1 light[level=14] keep
fill ~1 ~2 ~ ~-1 ~ ~ light[level=14] keep
execute unless block ~ ~ ~ light unless block ~ ~2 ~ light

