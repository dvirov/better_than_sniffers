execute as @a at @s if predicate bts:word_event/in_dark run function bts:world_event/in_dark
execute as @a at @s unless score @s time_in_dark matches ..0 if predicate bts:word_event/in_light run scoreboard players remove @s time_in_dark 1
execute as @a at @s store result score @s near_lit_campfire at @s run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~-5 ~-5 ~-5 filtered campfire[lit=true] move
execute as @a at @s store result score @s near_light_block at @s run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 ~-5 ~-5 ~-5 filtered #bts:light_source move 


execute if score .season calander matches 1 as @a as @s at @s run function bts:world_event/seasons/fall
execute if score .season calander matches 2 as @a as @s at @s run function bts:world_event/seasons/winter
execute if score .season calander matches 3 as @a as @s at @s run function bts:world_event/seasons/spring
execute if score .season calander matches 4 as @a as @s at @s run function bts:world_event/seasons/summer


execute as @a as @s at @s store result score @s ylevel run data get entity @s Pos[1]
execute as @a[gamemode=survival] as @s at @s if predicate bts:word_event/low_oxygen run function bts:world_event/low_oxygen
execute as @a as @s at @s if predicate bts:noroof unless score @s ylevel matches 150.. run scoreboard players set @s oxygen_time 0



execute as @a as @s at @s run function bts:world_event/bars_calc/temperature
execute as @a as @s if predicate bts:is_running run function bts:world_event/bars_calc/stamina
execute as @a as @s unless score @s bar_stamina matches 21.. if predicate bts:is_standing run function bts:world_event/bars_calc/stamina_regen
execute as @a as @s run function bts:bars/bars


# Slime Rain
execute if predicate bts:sunrise if predicate bts:word_event/rng0.05 as @a run function bts:world_event/slimerain/start
execute if score slimerain calander matches 1 as @a at @s positioned ~ 50 ~ run function bts:world_event/slimerain/main


