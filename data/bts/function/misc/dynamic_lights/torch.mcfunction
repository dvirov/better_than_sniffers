scoreboard players remove @s timer 1
execute if predicate bts:is_in_rain run scoreboard players remove @s timer 1
execute if score @s timer matches 0.. run return 0
scoreboard players set @s timer 60 
execute if items entity @s weapon.mainhand #bts:dynamic_light run function bts:misc/dynamic_lights/torch_right
execute if items entity @s weapon.offhand #bts:dynamic_light run function bts:misc/dynamic_lights/torch_left
