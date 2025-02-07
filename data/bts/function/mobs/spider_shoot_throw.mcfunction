execute if score @s timer matches 1.. run return run scoreboard players remove @s timer 1

scoreboard players set @s timer 60

execute unless predicate bts:targeting_player run return 0

summon falling_block ^ ^0.2 ^0.4 {BlockState:{Name:"minecraft:cobweb"},Time:10,DropItem:0b,Tags:["motion_projectile"]}



