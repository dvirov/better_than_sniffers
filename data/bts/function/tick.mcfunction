# main tick command

function bts:calender/tick

#execute as @e[type=armor_stand,tag=drying_rack] at @s run function bts:drying_rack/tick


execute as @e[type=#bts:visuals,tag=custom_block ] run function bts:blocks/tick





#execute as @e[type=#bts:visuals,tag=custom_block] run function bts:blocks/kill


execute as @e[type=!#bts:visuals] run function bts:mobs/tick

#execute as @e[type=block_display,tag=ai,predicate=!bts:is_passanger] run function bts:mobs/silent_kill


execute as @a at @s run function bts:misc/player_tick

