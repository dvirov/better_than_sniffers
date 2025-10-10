


#armor insulation calculation
execute store result score @s insulation_vaule run attribute @s max_absorption get

scoreboard players operation @s insulation_vaule += .4 values
execute if score @s wetness matches 600.. run scoreboard players remove @s insulation_vaule 4
execute if score @s wetness matches 300..599 run scoreboard players remove @s insulation_vaule 3
execute if score @s wetness matches 120..299 run scoreboard players remove @s insulation_vaule 2
execute if score @s wetness matches 1..119 run scoreboard players remove @s insulation_vaule 1



execute if score @s temperature_calc > @s bar_temperature unless score @s custom.effect.climate_resistance matches 1.. run scoreboard players operation @s insulation_vaule /= .4 values



#applay delay


function bts:world_event/bars_calc/temperature
scoreboard players add @s temperature_insulation_delay 1
execute if score @s temperature_insulation_delay < @s insulation_vaule run return 0 

scoreboard players set @s temperature_insulation_delay 0
execute if score @s bar_temperature < @s temperature_calc run scoreboard players add @s bar_temperature 1
execute if score @s bar_temperature > @s temperature_calc run scoreboard players remove @s bar_temperature 1
