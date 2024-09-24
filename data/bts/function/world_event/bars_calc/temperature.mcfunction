scoreboard players set @s bar_temprature 0
execute if predicate bts:is_night if predicate bts:noroof run scoreboard players remove @s bar_temprature 30
execute if predicate bts:is_day if predicate bts:noroof run scoreboard players add @s bar_temprature 30
execute if predicate bts:is_raining if predicate bts:noroof run scoreboard players remove @s bar_temprature 30
execute if predicate bts:is_raining if predicate bts:word_event/cold_biome if predicate bts:noroof run scoreboard players remove @s bar_temprature 100
execute if predicate bts:is_in_water run scoreboard players remove @s bar_temprature 10
execute if score @s is_near_light_block matches 1 run scoreboard players add @s bar_temprature 50
execute if predicate bts:is_on_ice run scoreboard players remove @s bar_temprature 10

 #biome check
execute if predicate bts:word_event/cold_biome run scoreboard players remove @s bar_temprature 50
execute if predicate bts:word_event/warm_biome run scoreboard players add @s bar_temprature 20
execute if predicate bts:word_event/hot_biome run scoreboard players add @s bar_temprature 50
execute if predicate bts:is_night if predicate bts:word_event/hot_biome run scoreboard players remove @s bar_temprature 100


 #fall
execute if score .monthinyear calander matches 1 run scoreboard players remove @s bar_temprature 20
 #winter
execute if score .monthinyear calander matches 2 run scoreboard players remove @s bar_temprature 50
 #spring
execute if score .monthinyear calander matches 3 run scoreboard players add @s bar_temprature 20
 #summer
execute if score .monthinyear calander matches 4 run scoreboard players add @s bar_temprature 50



