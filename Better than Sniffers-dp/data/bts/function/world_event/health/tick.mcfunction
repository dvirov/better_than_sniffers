execute store result score @s current.health run data get entity @s Health

execute if score @s current.health = @s previous.health run return 0 
#execute if score @s previous.health matches 20 run return 0

#say regen
function bts:world_event/health/heal/regen
