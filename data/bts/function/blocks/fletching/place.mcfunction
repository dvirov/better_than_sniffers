#run once when trigger from detect
execute unless block ~ ~ ~ #minecraft:replaceable run return run function bts:blocks/fail


setblock ~ ~ ~ barrel[facing=down]{CustomName:{text:"Fletching",extra:[{color:white,text:"     \uF801\uF80A\uF80A\uF808\uD001"}]}}

function bts:blocks/fletching/set_grid
summon block_display ~0.5 ~1.1 ~0.5 {Motion:[0.0,0.0,0.0],Tags:["custom_block","fletching"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.1f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:fletching_table"}}
#execute as @e[type=block_display,distance=..30] at @s run function bts:blocks/light_update2
kill @s

