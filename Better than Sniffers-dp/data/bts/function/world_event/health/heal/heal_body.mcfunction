
#execute store result score @s current.health run data get entity @s Health

execute if score @s current.health <= @s previous.health run return 0

execute unless score @s Body matches 6.. run function bts:world_event/health/heal/body

execute if score @s Body matches 6 unless score @s current.health = @s previous.health run return run function bts:world_event/health/heal/heal_general
execute unless score @s current.health = @s previous.health run function bts:world_event/health/heal/heal_body


