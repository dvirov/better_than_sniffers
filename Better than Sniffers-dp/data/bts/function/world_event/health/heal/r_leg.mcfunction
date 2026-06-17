#execute if score @s R.leg matches 3.. run return run function bts:world_event/health/heal/heal_general

execute store success score num.tmp regen_clc unless score @s R.leg matches 3.. unless score @s healing matches ..0 run scoreboard players remove @s healing 1
execute if score num.tmp regen_clc matches 1 run scoreboard players add @s custom.effect.restore_health 1

execute unless score @s R.leg matches 3.. run scoreboard players add @s R.leg 1

execute unless score @s previous.health matches 20.. run scoreboard players add @s previous.health 1

execute if score @s R.leg matches 1.. run attribute @s movement_speed modifier remove r_leg

execute unless score @s R.leg matches 3.. if score @s healing matches 1.. run function bts:world_event/health/heal/r_leg
#execute if score @s heal.dialog matches 7 run function bts:world_event/health/heal/heal_general

#tellraw @a [{color:gold ,score:{name:"@s", objective:"healing"}},{text:" regen points at r leg function"}]

scoreboard players set @s healing 0


