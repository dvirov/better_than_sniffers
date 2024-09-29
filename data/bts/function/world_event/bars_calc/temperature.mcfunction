execute if score @s bar_temperature < @s temperature_calc run scoreboard players add @s bar_temperature 1
execute if score @s bar_temperature > @s temperature_calc run scoreboard players remove @s bar_temperature 1
scoreboard players set @s temperature_calc 0


execute if predicate bts:is_night if predicate bts:noroof run scoreboard players remove @s temperature_calc 30
execute if predicate bts:is_day if predicate bts:noroof run scoreboard players add @s temperature_calc 30

execute if predicate bts:is_raining if predicate bts:noroof run scoreboard players remove @s temperature_calc 30
execute if predicate bts:is_raining if predicate bts:word_event/cold_biome if predicate bts:noroof run scoreboard players remove @s temperature_calc 50

execute if predicate bts:is_in_water run scoreboard players remove @s temperature_calc 10

scoreboard players operation @s temperature_calc += @s near_light_block
scoreboard players operation @s temperature_calc += @s near_light_block
execute if score @s near_lit_campfire matches 1.. run scoreboard players add @s temperature_calc 10
execute if score @s near_lit_campfire matches 2.. run scoreboard players add @s temperature_calc 10
execute if score @s near_lit_campfire matches 3.. run scoreboard players add @s temperature_calc 10

execute if predicate bts:is_on_fire run scoreboard players add @s temperature_calc 10

execute if predicate bts:is_on_ice run scoreboard players remove @s temperature_calc 10

 #biome check
execute if predicate bts:word_event/cold_biome run scoreboard players remove @s temperature_calc 50
execute if predicate bts:word_event/warm_biome run scoreboard players add @s temperature_calc 20
execute unless predicate bts:is_night if predicate bts:word_event/hot_biome run scoreboard players add @s temperature_calc 50
execute if predicate bts:is_night if predicate bts:word_event/hot_biome run scoreboard players remove @s temperature_calc 50


 #fall
execute if score .monthinyear calander matches 1 run scoreboard players remove @s temperature_calc 20
 #winter
execute if score .monthinyear calander matches 2 run scoreboard players remove @s temperature_calc 50
 #spring
execute if score .monthinyear calander matches 3 run scoreboard players add @s temperature_calc 20
 #summer
execute if score .monthinyear calander matches 4 run scoreboard players add @s temperature_calc 50



