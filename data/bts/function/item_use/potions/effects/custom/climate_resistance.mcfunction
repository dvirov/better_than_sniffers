scoreboard players remove @s custom.effect.climate_resistance 1
execute if score @s custom.effect.climate_resistance matches 1.. run attribute @s max_absorption modifier add potion.effect 100 add_value
execute if score @s custom.effect.climate_resistance matches ..0 run attribute @s max_absorption modifier remove potion.effect 

