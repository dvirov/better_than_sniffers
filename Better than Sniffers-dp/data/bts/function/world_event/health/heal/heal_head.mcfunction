

execute if score @s current.health <= @s previous.health run return 0

execute unless score @s Head matches 4.. run function bts:world_event/health/heal/head


execute if score @s Head matches 4.. unless score @s current.health = @s previous.health run return run function bts:world_event/health/heal/heal_general
#execute unless score @s current.health = @s previous.health run function bts:world_event/health/heal/heal_head
