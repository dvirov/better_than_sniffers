function bts:calander/tick
function bts:campfire/tick
function bts:world_event/tick
execute as @a if score @s deathdetector >= .1 values run function bts:respawn
execute as @e[type=armor_stand,tag=drying_rack] at @s run function bts:drying_rack/tick




function bts:blocks/tick