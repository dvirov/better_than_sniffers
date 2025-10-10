function bts:misc/dynamic_lights/remove

#execute if predicate bts:misc/light_level/15 run return fail
execute if items entity @s weapon.mainhand #bts:dynamic_light[damage=100] run return run item replace entity @s weapon.mainhand with stick
execute if items entity @s weapon.offhand #bts:dynamic_light[damage=100] run return run item replace entity @s weapon.offhand with stick
execute if items entity @s weapon.mainhand #bts:dynamic_light[!damage=100] unless block ~ ~ ~ light run return run function bts:misc/dynamic_lights/place
execute if items entity @s weapon.offhand #bts:dynamic_light[!damage=100] unless block ~ ~ ~ light run return run function bts:misc/dynamic_lights/place


