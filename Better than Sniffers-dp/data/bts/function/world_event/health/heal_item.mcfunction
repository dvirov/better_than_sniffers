
#tellraw @a [{color:gray ,score:{name:"@s", objective:"healing"}},{text:"healing points at start"}]

#say test healitem
scoreboard players set @s regen.amplifier 0 
scoreboard players set @s regen.duration 0 
execute if predicate bts:has_regeneration store result score @s regen.duration run data get entity @s active_effects.[{id:"minecraft:regeneration"}].duration
execute if predicate bts:has_regeneration store result score @s regen.amplifier run data get entity @s active_effects.[{id:"minecraft:regeneration"}].amplifier

execute if score @s heal.dialog matches 1 run function bts:world_event/health/heal/head
execute if score @s heal.dialog matches 2 run function bts:world_event/health/heal/l_arm
execute if score @s heal.dialog matches 3 run function bts:world_event/health/heal/body
execute if score @s heal.dialog matches 4 run function bts:world_event/health/heal/r_arm
execute if score @s heal.dialog matches 5 run function bts:world_event/health/heal/l_leg
execute if score @s heal.dialog matches 6 run function bts:world_event/health/heal/r_leg
execute if score @s heal.dialog matches 7 run function bts:world_event/health/heal/quick_heal


scoreboard players add @s custom.effect.restore_health 1
#execute if score @s heal.dialog matches 7 run scoreboard players add @s custom.effect.restore_health 1

scoreboard players set @s heal.dialog 0
execute store result score @s current.health run data get entity @s Health

#tellraw @a [{color:green ,score:{name:"@s", objective:"custom.effect.restore_health"}},{text:"regen points at end"}]