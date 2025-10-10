advancement revoke @s only bts:trigger/health/damage_other

execute store result score @s current.health run data get entity @s Health


scoreboard players set @s damage 0

scoreboard players operation @s current.health -= @s health_clc

scoreboard players operation @s damage = @s current.health

execute store result score @s current.health run data get entity @s Health

function bts:world_event/health/damage/damage_random