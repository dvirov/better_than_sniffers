#execute if score @s L.arm matches 2.. run return run function bts:world_event/health/heal/heal_general

execute store success score num.tmp regen_clc unless score @s L.arm matches 2.. unless score @s healing matches ..0 run scoreboard players remove @s healing 1
execute if score num.tmp regen_clc matches 1 run scoreboard players add @s custom.effect.restore_health 1

execute unless score @s L.arm matches 2.. run scoreboard players add @s L.arm 1

execute unless score @s previous.health matches 20.. run scoreboard players add @s previous.health 1


execute if score @s L.arm matches 1.. run attribute @s attack_speed modifier remove r_arm
execute if score @s L.arm matches 1.. run attribute @s block_break_speed modifier remove r_arm

execute unless score @s L.arm matches 2.. if score @s healing matches 1.. run function bts:world_event/health/heal/l_arm
#execute if score @s heal.dialog matches 7 run function bts:world_event/health/heal/heal_general

#tellraw @a [{color:gold ,score:{name:"@s", objective:"healing"}},{text:" regen points at l arm function"}]

scoreboard players set @s healing 0
