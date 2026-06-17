advancement revoke @s only bts:trigger/health/damage_head
execute store result score @s current.health run data get entity @s Health
execute unless score @s Head matches 2.. unless score @s health matches 1 run return 0
execute if score @s current.health >= @s previous.health run return 0

execute unless score @s Head matches ..0 run function bts:world_event/health/damage/head

execute if score @s Head matches ..0 run damage @s 99 bts:head

execute if score @s Head matches 0 unless score @s current.health = @s previous.health run return run function bts:world_event/health/damage/damage_general
execute unless score @s current.health = @s previous.health run function bts:world_event/health/damage/damage_head



#    4
#  2 6 2
#   3 3