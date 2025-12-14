advancement revoke @s only bts:trigger/health/damage_body
execute store result score @s current.health run data get entity @s Health

execute if score @s current.health >= @s previous.health run return 0

execute unless score @s Body matches ..0 run function bts:world_event/health/damage/body

execute if score @s Body matches 0 unless score @s current.health = @s previous.health run return run function bts:world_event/health/damage/damage_general
execute unless score @s current.health = @s previous.health run function bts:world_event/health/damage/damage_body


