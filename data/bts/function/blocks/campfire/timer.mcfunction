#run as text disply

data merge entity @s {text:'[{"color":"red","italic":false,"score":{"name":"@s","objective":"campfire_time"}},{"color":"gold","italic":true,"text":"s"}]'}

execute store result score @s campfire_time_ticks on vehicle run scoreboard players get @s campfire_time_ticks
execute store result score @s campfire_time on vehicle run scoreboard players get @s campfire_time
execute unless score @s campfire_time_ticks matches ..0 if block ~ ~ ~ campfire[lit=true] on vehicle run scoreboard players remove @s campfire_time_ticks 1
execute store result score @s campfire_time run scoreboard players operation @s campfire_time_ticks /= .20 values
execute on vehicle at @s if predicate bts:misc/campfire_off run function bts:blocks/campfire/unlit


execute on vehicle at @s run function bts:blocks/campfire/fuel
