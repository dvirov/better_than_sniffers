# main tick command

function bts:calander/tick
function bts:world_event/tick
execute as @a if score @s deathdetector matches 1.. run function bts:misc/respawn
#execute as @e[type=armor_stand,tag=drying_rack] at @s run function bts:drying_rack/tick


function bts:blocks/tick
execute store success score boolkill bool run kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
execute as @e[type=#bts:visuals,tag=custom_block] run function bts:blocks/kill
execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}}] at @s run function bts:blocks/anvil/kill

execute as @e[type=!player,type=!#bts:visuals] run function bts:mobs/tick


execute as @a at @s run function bts:misc/player_tick

