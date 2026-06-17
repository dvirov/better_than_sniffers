execute if score @s timer matches 1.. run return run scoreboard players remove @s timer 1
rotate @s facing entity @p
scoreboard players set @s timer 60

execute unless predicate bts:targeting_player run return 0

summon falling_block ^ ^0.1 ^0.2 {BlockState:{Name:"minecraft:cobweb"},Time:10,DropItem:0b,Tags:["motion_projectile"]}



execute as @e[tag=motion_projectile,tag=!motion_added,distance=..1,limit=1,type=falling_block] at @s rotated as @e[distance=..1,limit=1,type=spider] run function bts:mobs/apply_motion
#rotate @e[tag=motion_projectile,tag=!motion_added,distance=..1,limit=1,type=falling_block] facing ^ ^ ^1 