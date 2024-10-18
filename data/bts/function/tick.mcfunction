function bts:calander/tick
function bts:blocks/campfire/tick
function bts:world_event/tick
execute as @a if score @s deathdetector >= .1 values run function bts:misc/respawn
#execute as @e[type=armor_stand,tag=drying_rack] at @s run function bts:drying_rack/tick

function bts:blocks/tick

execute as @e[type=!player,type=!#bts:visuals] run function bts:mobs/tick


execute as @a at @s run function bts:misc/player_tick