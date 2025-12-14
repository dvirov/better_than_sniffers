#execute if score @s Body matches 6.. run return run function bts:world_event/health/heal/heal_general

execute store success score num.tmp regen_clc unless score @s Body matches 6.. unless score @s healing matches ..0 run scoreboard players remove @s healing 1
execute if score num.tmp regen_clc matches 1 run scoreboard players add @s custom.effect.restore_health 1

execute unless score @s Body matches 6.. run scoreboard players add @s Body 1

execute unless score @s previous.health matches 20.. run scoreboard players add @s previous.health 1


execute unless score @s Body matches 6.. if score @s healing matches 1.. run function bts:world_event/health/heal/body
#execute if score @s heal.dialog matches 7 run function bts:world_event/health/heal/heal_general


scoreboard players set @s healing 0
