function datapack:calander/tick
function datapack:campfire/tick
function datapack:world_event/tick
execute as @a if score @s deathdetector >= .1 values run function datapack:respawn
execute as @e[type=armor_stand,tag=drying_rack] at @s run function datapack:drying_rack/tick





