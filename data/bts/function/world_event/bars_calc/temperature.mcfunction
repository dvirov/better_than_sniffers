scoreboard players set @s temperature_calc 0

execute if score @s wetness matches 1.. unless block ~ ~ ~ water unless block ~ ~1 ~ water run scoreboard players remove @s wetness 1

# wetness 
execute if block ~ ~ ~ #bts:water run scoreboard players set @s wetness 600
execute if block ~ ~1 ~ #bts:water run scoreboard players set @s wetness 600


execute if score @s wetness matches 300.. run scoreboard players remove @s temperature_calc 20
execute if score @s wetness matches 1..300 run scoreboard players remove @s temperature_calc 10


#count heat sources nearby
execute store result score @s near_lit_campfire run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~-5 ~-5 ~-5 filtered campfire[lit=true] move
execute store result score @s near_light_block run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~-5 ~-5 ~-5 filtered #bts:light_source move 
execute if score @s near_light_block matches 11.. run scoreboard players set @s near_light_block 10
scoreboard players operation @s near_light_block += @s near_lit_campfire

#day or night
execute if predicate bts:is_night if predicate bts:noroof run scoreboard players remove @s temperature_calc 30
execute if predicate bts:is_day if predicate bts:noroof run scoreboard players add @s temperature_calc 15

#if rainy
execute if predicate bts:is_raining if predicate bts:noroof run scoreboard players remove @s temperature_calc 15
execute if predicate bts:is_raining if predicate bts:world_event/cold_biome if predicate bts:noroof run scoreboard players remove @s temperature_calc 15

#if in water
execute if predicate bts:is_in_water run scoreboard players remove @s temperature_calc 10

scoreboard players operation @s temperature_calc += @s near_light_block
scoreboard players operation @s temperature_calc += @s near_light_block
execute if score @s near_lit_campfire matches 1.. run scoreboard players add @s temperature_calc 10

execute if predicate bts:is_on_fire run scoreboard players add @s temperature_calc 10

execute if predicate bts:is_on_ice run scoreboard players remove @s temperature_calc 10

 #biome check
execute if predicate bts:world_event/cold_biome run scoreboard players remove @s temperature_calc 50
execute if predicate bts:world_event/warm_biome run scoreboard players add @s temperature_calc 20
execute unless predicate bts:is_night if predicate bts:world_event/hot_biome run scoreboard players add @s temperature_calc 20
execute if predicate bts:is_night if predicate bts:world_event/hot_biome run scoreboard players remove @s temperature_calc 20


 #fall
execute if score .monthinyear calander matches 1 run scoreboard players remove @s temperature_calc 20
 #winter
execute if score .monthinyear calander matches 2 run scoreboard players remove @s temperature_calc 50
 #spring
execute if score .monthinyear calander matches 3 run scoreboard players add @s temperature_calc 20
 #summer
execute if score .monthinyear calander matches 4 run scoreboard players add @s temperature_calc 50



