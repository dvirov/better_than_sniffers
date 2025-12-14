# run from player tick

execute if score .season calender matches 1 as @a at @s run function bts:world_event/seasons/fall
execute if score .season calender matches 2 as @a at @s run function bts:world_event/seasons/winter
execute if score .season calender matches 3 as @a at @s run function bts:world_event/seasons/spring
execute if score .season calender matches 4 as @a at @s run function bts:world_event/seasons/summer


#execute as @a at @s store result score @s ylevel run data get entity @s Pos[1]
#execute as @a[gamemode=survival] at @s if predicate bts:world_event/low_oxygen run function bts:world_event/low_oxygen
#execute as @a at @s if predicate bts:noroof unless score @s ylevel matches 150.. run scoreboard players set @s oxygen_time 0



execute as @s[gamemode=survival] at @s run function bts:world_event/bars_calc/temperature_insulation_delay
execute as @s[gamemode=survival] if predicate bts:is_running run function bts:world_event/bars_calc/stamina
execute as @s[gamemode=survival] if predicate bts:is_jumping run function bts:world_event/bars_calc/stamina
execute unless score @s bar_stamina matches 21.. unless predicate bts:is_running unless predicate bts:is_jumping run function bts:world_event/bars_calc/stamina_regen


# Slime Rain
execute unless score slimerain calender matches 1 if predicate bts:is_day if predicate bts:sunrise if predicate bts:world_event/rng0.001 as @a run function bts:world_event/slimerain/start
execute if score slimerain calender matches 1 as @a at @s positioned ~ ~50 ~ run function bts:world_event/slimerain/main


execute if predicate bts:is_raining run function bts:world_event/rain/main

execute if predicate bts:nightfall run function bts:world_event/day_end

