#execute if score @s Head matches 4.. run return run function bts:world_event/health/heal/heal_general

execute store success score num.tmp regen_clc unless score @s Head matches 4.. unless score @s healing matches ..0 run scoreboard players remove @s healing 1
execute if score num.tmp regen_clc matches 1 run scoreboard players add @s custom.effect.restore_health 1

execute unless score @s Head matches 4.. run scoreboard players add @s Head 1

execute unless score @s previous.health matches 20.. run scoreboard players add @s previous.health 1


execute unless score @s Head matches 4.. if score @s healing matches 1.. run function bts:world_event/health/heal/head
#execute if score @s heal.dialog matches 7 run function bts:world_event/health/heal/heal_general

scoreboard players set @s healing 0
