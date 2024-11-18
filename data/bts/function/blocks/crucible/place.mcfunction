#run once when trigger from detect
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail

setblock ~ ~ ~ barrel[facing=down]{CustomName:'["Crucible      ",{"color":"white","text":"\\uF801\\uF80B\\uF808\\uD000"}]'}
function bts:blocks/crucible/set_grid
summon block_display ~0.5 ~1.1 ~0.5 {Motion:[0.0,0.0,0.0],Tags:["custom_block","crucible"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:lava_cauldron"}}
#execute as @e[type=block_display,distance=..30] at @s run function bts:blocks/light_update2

kill @s